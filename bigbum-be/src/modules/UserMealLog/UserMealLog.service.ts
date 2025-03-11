import { TypeOrmCrudService } from '@nestjsx/crud-typeorm';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { UserMealLogEntity } from './UserMealLog.entity';
import { UserMealInputDto } from './dto/UserMealInput.dto';
import { AIIntegrationService } from 'src/integrations/AIIntegration/AIIntegration.abstract';
import { MealQuestionResponse } from '../UserMealQuestions/dto/MealQuestionResponse.dto';
import { MealResultResponse } from './dto/MealResultResponse.dto';
import { stringify } from 'querystring';
import { UserMealOutputDto } from './dto/UserMealOutput.dto';
import { UserSubMealOutput } from '../UserSubMealLog/dto/UserSubMealOutput.dto';
import { AIIntegrationLogsService } from '../AIIntegrationLogs/AIIntegrationLogs.service';
import { AIIntegrationLogsEntity } from '../AIIntegrationLogs/AIIntegrationLogs.entity';
import { AIPromptService } from '../AIPrompt/AIPrompt.service';
import { PromptName } from '../AIPrompt/AIPrompt.constants';
import { UserService } from '../User/User.service';
import { UserMealQuestionsEntity } from '../UserMealQuestions/UserMealQuestions.entity';
import { UserMealQuestionsService } from '../UserMealQuestions/UserMealQuestions.service';
import * as request from 'supertest';
import { AIPromptEntity } from '../AIPrompt/AIPrompt.entity';

@Injectable()
export class UserMealLogService extends TypeOrmCrudService<UserMealLogEntity> {
  constructor(
    @InjectRepository(UserMealLogEntity) repo,
    private aiIntegrationService: AIIntegrationService,
    private aiLogService: AIIntegrationLogsService,
    private aiPromptService: AIPromptService,
    private userService: UserService,
    private userMealQuestionService: UserMealQuestionsService,
  ) {
    super(repo);
  }

  async extractNutrientData(
    input: UserMealInputDto,
  ): Promise<MealQuestionResponse | MealResultResponse> {
    let questionsAndAnswer = [];

    if (input.userMealId) {
      questionsAndAnswer = await this.userMealQuestionService.find({
        where: { userMealLog: { id: input.userMealId } },
      });
    }

    let prompt: AIPromptEntity = null;

    if (questionsAndAnswer.length > 0) {
      prompt = await this.aiPromptService.getOneFromName(
        PromptName.OnlyNutrientsWithImage,
      );
      questionsAndAnswer.forEach((question) => {
        prompt.promptRequest += `\nQuestion: ${question.question}\nAnswer: ${question.answer}\n`; // Append each question
      });
    } else {
      prompt = await this.aiPromptService.getOneFromName(
        PromptName.FullNutrientsWithImage,
      );
    }
    const startTime = Date.now(); // Start timer

    const response = await this.aiIntegrationService.AIPromptWithImage(
      input.mealImage,
      prompt.promptRequest,
    );

    const endTime = Date.now(); // End timer
    const timeTaken = endTime - startTime; // Calculate duration in milliseconds

    // Prepare AI log data
    const aiLog = new AIIntegrationLogsEntity();
    aiLog.actionUrl = 'ChatGPT';
    aiLog.request = prompt.promptRequest;
    aiLog.response = JSON.stringify(response);
    aiLog.responseType = prompt.promptName;
    aiLog.requestDuration = timeTaken;
    aiLog.promptToken = response.usage.total_tokens ?? 0;
    aiLog.cost = await this.aiIntegrationService.calculateTokenCost(
      Number(response.usage.prompt_tokens),
      Number(response.usage.completion_tokens),
    );
    aiLog.createdBy = await this.userService.findOne({
      where: { id: input.userId },
    });
    aiLog.promptType = prompt;

    await this.aiLogService.create(aiLog);
    // eslint-disable-next-line @typescript-eslint/no-unsafe-call
    const cleanedContent = response.choices[0].message.content
      .replace(/```json/g, '') // Remove ```json
      .replace(/```/g, '') // Remove closing ```
      .replace(/\\n/g, '') // Remove escaped newlines
      .replace(/\\"/g, '"'); // Fix escaped quotes
    const rawContent = JSON.parse(cleanedContent);

    if (
      rawContent.ResponseType == 'Question' ||
      rawContent.ResponseType === 'NutrientResult'
    ) {
      let userMealLog: UserMealLogEntity = {
        mealType: input.mealName,
        mealImage: 'input.mealImage1',
      } as UserMealLogEntity;

      if (input.userMealId != null && input.userMealId > 0) {
        await this.repo.update(input.userMealId, userMealLog);
      } else {
        const temp = this.repo.create(userMealLog);
        userMealLog = await this.repo.save(temp);
      }

      let lastResponse = null;
      if (rawContent.ResponseType === 'Question') {
        return this.mapToQuestionResponse(rawContent, userMealLog);
      } else if (rawContent.ResponseType === 'NutrientResult') {
        userMealLog.id = input.userMealId;
        return await this.mapToNutrientResult(rawContent, userMealLog);
      }
    }
  }

  /**
   * Maps AI Question response to MealQuestionResponse DTO
   */
  private async mapToQuestionResponse(
    parsedContent: any,
    userMealLog: UserMealLogEntity,
  ): Promise<MealQuestionResponse> {
    console.log('Parsed Content:', JSON.stringify(parsedContent, null, 2));

    const questions: UserMealQuestionsEntity[] =
      // eslint-disable-next-line @typescript-eslint/no-unsafe-call
      parsedContent.Result.QuestionsList.map((q: any) => {
        const entity = new UserMealQuestionsEntity();
        entity.question = q.Question;
        entity.options = q.Options;
        entity.userMealLog = userMealLog;
        return entity;
      });

    for (const question of questions) {
      await this.userMealQuestionService.create(question);
    }

    return {
      ResponseType: 'Question',
      // eslint-disable-next-line @typescript-eslint/no-unsafe-call
      questionList: parsedContent.Result.QuestionsList.map((q: any) => ({
        question: q.Question,
        options: q.Options,
      })),
    };
  }

  /**
   * Maps AI Nutrient result response to MealResultResponse DTO
   */
  private async mapToNutrientResult(
    parsedContent: any,
    userMealLog: UserMealLogEntity,
  ): Promise<MealResultResponse> {
    const mainMeal = this.mapToUserMealOutput(parsedContent.Result);
    userMealLog.calories = mainMeal.calories;
    userMealLog.protein = mainMeal.protein;
    userMealLog.fats = mainMeal.fats;
    userMealLog.carbs = mainMeal.carbs;
    userMealLog.mealLevel = mainMeal.mealLevel;
    userMealLog.comments = mainMeal.comments;

    if (userMealLog.id != null && userMealLog.id > 0) {
      await this.repo.update(userMealLog.id, userMealLog);
    }

    const subMealList: UserSubMealOutput[] =
      // eslint-disable-next-line @typescript-eslint/no-unsafe-call
      parsedContent.Result.FoodDescription.map((food: any) => {
        // eslint-disable-next-line @typescript-eslint/no-unsafe-argument
        const [foodName, details] = Object.entries(food)[0]; // Extract food name & details
        return this.mapToUserSubMealOutput(details, foodName);
      });

    return {
      ResponseType: 'NutrientResult',
      mainMeal,
      subMealList,
    };
  }

  mapToUserSubMealOutput(details: any, mealName: string): UserSubMealOutput {
    return {
      id: 0, // Assuming this is generated later (or adjust based on your DB setup)
      mealName,
      // eslint-disable-next-line @typescript-eslint/no-unsafe-argument
      weight: parseFloat(details.Weight), // Convert to number if needed
      calories: parseFloat(details.Calories),
      protein: parseFloat(details.Protein),
      fats: parseFloat(details.Fats),
      carbs: parseFloat(details.Carbs),
      mainMeal: null,
    };
  }

  /**
   * Maps AI food data to UserMealOutputDto
   */
  private mapToUserMealOutput(data: any): UserMealOutputDto {
    return {
      id: 0, // Generate random ID (replace with real ID logic if needed)
      mealImage: '', // Set meal image if applicable
      mealType: 'Main Meal',
      // eslint-disable-next-line @typescript-eslint/no-unsafe-argument, @typescript-eslint/no-unsafe-member-access
      weight: parseFloat(data.Weight) || 0,
      // eslint-disable-next-line @typescript-eslint/no-unsafe-argument, @typescript-eslint/no-unsafe-member-access
      calories: parseInt(data.Calories) || 0,
      // eslint-disable-next-line @typescript-eslint/no-unsafe-argument, @typescript-eslint/no-unsafe-member-access
      protein: parseInt(data.Protein) || 0,
      // eslint-disable-next-line @typescript-eslint/no-unsafe-argument, @typescript-eslint/no-unsafe-member-access
      fats: parseInt(data.Fats) || 0,
      // eslint-disable-next-line @typescript-eslint/no-unsafe-argument, @typescript-eslint/no-unsafe-member-access
      carbs: parseInt(data.Carbs) || 0,
      // eslint-disable-next-line @typescript-eslint/no-unsafe-argument, @typescript-eslint/no-unsafe-member-access
      mealLevel: parseInt(data.Grade) || 0,
      // eslint-disable-next-line @typescript-eslint/no-unsafe-argument, @typescript-eslint/no-unsafe-member-access
      comments: stringify(data.Comments) || '',
    };
  }
}
