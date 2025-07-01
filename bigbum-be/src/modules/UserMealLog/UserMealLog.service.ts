/* eslint-disable @typescript-eslint/no-unsafe-argument */
import { TypeOrmCrudService } from '@dataui/crud-typeorm';
import { Injectable, Logger } from '@nestjs/common';
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
import { AIPromptEntity } from '../AIPrompt/AIPrompt.entity';
import { UserSubMealLogService } from '../UserSubMealLog/UserSubMealLog.service';

@Injectable()
export class UserMealLogService extends TypeOrmCrudService<UserMealLogEntity> {
  private readonly logger = new Logger(UserMealLogService.name);

  constructor(
    @InjectRepository(UserMealLogEntity) repo,
    private aiIntegrationService: AIIntegrationService,
    private aiLogService: AIIntegrationLogsService,
    private aiPromptService: AIPromptService,
    private userService: UserService,
    private userMealQuestionService: UserMealQuestionsService,
    private userSubMealLogService: UserSubMealLogService,
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
        mealImage: 'input.mealImage',
        dateOfMeal: input.dateOfMeal,
      } as UserMealLogEntity;

      if (input.userMealId != null && input.userMealId > 0) {
        await this.repo.update(input.userMealId, userMealLog);
      } else {
        const temp = this.repo.create(userMealLog);
        userMealLog = await this.repo.save(temp);
        this.logger.log(`userMealLog ${JSON.stringify(userMealLog)}`);
      }

      // let lastResponse = null;
      if (rawContent.ResponseType === 'Question') {
        return this.mapToQuestionResponse(rawContent, userMealLog);
      } else if (rawContent.ResponseType === 'NutrientResult') {
        // userMealLog.id = input.userMealId;
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
    const mainMeal = this.mapToUserMealOutput(
      parsedContent.Result,
      userMealLog,
    );
    userMealLog.comments = mainMeal.comments;
    userMealLog.calories = mainMeal.calories;
    userMealLog.protein = mainMeal.protein;
    userMealLog.fats = mainMeal.fats;
    userMealLog.carbs = mainMeal.carbs;
    userMealLog.mealLevel = mainMeal.mealLevel;
    userMealLog.comments = mainMeal.comments;
    userMealLog.mealName = mainMeal.mealName;
    userMealLog.weight = mainMeal.weight;

    if (userMealLog.id != null && userMealLog.id > 0) {
      await this.repo.update(userMealLog.id, userMealLog);
    }

    const subMealList: UserSubMealOutput[] = await Promise.all(
      parsedContent.Result.FoodDescription.map(
        async (food: any): Promise<UserSubMealOutput> => {
          const [foodName, details] = Object.entries(food)[0];
          return this.mapToUserSubMealOutput(details, foodName, userMealLog);
        },
      ),
    );

    return {
      ResponseType: 'NutrientResult',
      mainMeal,
      subMealList,
    };
  }

  async mapToUserSubMealOutput(
    details: any,
    mealName: string,
    userMealLog: UserMealLogEntity,
  ): Promise<UserSubMealOutput> {
    const temp = {
      mealName,
      weight: parseFloat(details.Weight), // Convert to number if needed
      calories: parseFloat(details.Calories),
      protein: parseFloat(details.Protein),
      fats: parseFloat(details.Fats),
      carbs: parseFloat(details.Carbs),
      mainMeal: userMealLog,
    };
    const userSub = await this.userSubMealLogService.create(temp);
    return {
      id: userSub.id, // Assuming this is generated later (or adjust based on your DB setup)
      mealName,

      weight: parseFloat(details.Weight), // Convert to number if needed
      calories: parseInt(details.Calories),
      protein: parseInt(details.Protein),
      fats: parseInt(details.Fats),
      carbs: parseInt(details.Carbs),
      mainMeal: userMealLog,
    };
  }

  /**
   * Maps AI food data to UserMealOutputDto
   */
  private mapToUserMealOutput(
    data: any,
    userMealLog: UserMealLogEntity,
  ): UserMealOutputDto {
    return {
      id: userMealLog.id,
      mealImage: '',
      mealType: userMealLog.mealType,
      mealName: userMealLog.mealName,
      weight: this.extractNumber(data.Weight),
      calories: this.extractNumber(data.Calories),
      protein: this.extractNumber(data.Protein),
      fats: this.extractNumber(data.Fats),
      carbs: this.extractNumber(data.Carbs),
      mealLevel: this.extractNumber(data.Grade),
      comments: data.Comments,
    };
  }

  private extractNumber(value: any): number {
    if (!value) return 0;
    const numberOnly = String(value).replace(/[^\d.]/g, '');
    return parseFloat(numberOnly) || 0;
  }
}
