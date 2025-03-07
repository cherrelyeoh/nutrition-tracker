import {
  HttpException,
  HttpStatus,
  Injectable,
  OnModuleInit,
} from '@nestjs/common';
import { AIIntegrationService } from './AIIntegration.abstract';
import { ChatGPTInputDto } from './dto/ChatGPTInputDto.dto';
import { lastValueFrom } from 'rxjs';
import { HttpService } from '@nestjs/axios';
import * as util from 'util'; // Import util for safe object inspection
import { stringify } from 'querystring';
import { MealQuestionResponse } from 'src/modules/UserMealLog/dto/MealQuestionResponse.dto';
import { MealResultResponse } from 'src/modules/UserMealLog/dto/MealResultResponse.dto';
import { UserMealOutputDto } from 'src/modules/UserMealLog/dto/UserMealOutput.dto';
import { UserSubMealOutput } from 'src/modules/UserSubMealLog/dto/UserSubMealOutput.dto';

// import * as dotenv from 'dotenv';

@Injectable()
export class OpenAiIntegrationService
  extends AIIntegrationService
  implements OnModuleInit
{
  async onModuleInit() {
    // try {
    //   await this.startWhatsapp();
    // } catch (error) {
    //   this.logger.warn('OnModule', error);
    // }
  }

  constructor(
    // private readonly configService: ConfigService,
    private readonly httpService: HttpService,
  ) {
    super();
  }
  private openApiKey =
    'OPENAI_API_KEY_REDACTED';
  prompt = `Please analyze the meal image provided and estimate its calorie content and macronutrient breakdown (protein, fats, and carbohydrates).
    \n\n
    If additional information is needed, ask follow-up questions only in the following structured format:
    {
    "ResponseType": "Question",
    "Result": {
    "Question": [
    {"Question1": ["OptionA", "OptionB", "OptionC"]},
    {"Question2": ["OptionA", "OptionB", "OptionC"]}
    ]
    }
    }
    
    \n\n
    When you have sufficient information, return the nutritional analysis, including a detailed breakdown of the food items with their estimated weight, in the following format:
    {
    "ResponseType": "NutrientResult",
    "Result": {
    "Protein": "56g",
    "Carbs": "20g",
    "Fats": "5g",
    "Calories": "500kcal",
    "Comments": "This is a good dish.",
    "Grade": 4,
    "FoodDescription": [
    {
    "Mutton Curry": {
    "Weight": "80g",
    "Calories": "140kcal",
    "Protein": "12g",
    "Fats": "9g",
    "Carbs": "10g"
    }
    },
    {
    "Rice": {
    "Weight": "100g",
    "Calories": "130kcal",
    "Protein": "3g",
    "Fats": "1g",
    "Carbs": "28g"
    }
    }
    ]
    }
    }
    \n\n
    If the input is invalid or cannot be processed, respond in the error format:
    {
    "ResponseType": "Error",
    "Result": {
    "Message": "This is not a food image."
    }
    }
    \n\n
    Follow-up Questions: Should only request specific clarifications, such as serving size, visible ingredients, or preparation method, and must use the ResponseType: Question format with radio options.
    `;
  async testFunction(
    // docType: string,
    imageBase64String: string,
    // filename: string,
    // caseNo: string,
  ): Promise<string> {
    // const prompt = this.getPromptByPromptName(docType);

    const input: ChatGPTInputDto = {
      model: 'gpt-4o',
      max_tokens: 4095,
      temperature: 1,
      top_p: 1,
      frequency_penalty: 0,
      presence_penalty: 0,
      messages: [
        {
          role: 'user',
          content: [
            { type: 'text', text: this.prompt },
            {
              type: 'image_url',
              image_url: { url: `data:image/jpeg;base64,${imageBase64String}` },
            },
          ],
        },
      ],
    };

    try {
      // Call OpenAI API
      const apiResponse = await lastValueFrom(
        this.httpService.post(
          'https://api.openai.com/v1/chat/completions',
          input,
          {
            headers: {
              Authorization: `Bearer ${this.openApiKey}`,
              'Content-Type': 'application/json',
            },
          },
        ),
      );

      // eslint-disable-next-line @typescript-eslint/no-unsafe-member-access
      if (!apiResponse?.data?.choices?.[0]?.message?.content) {
        throw new Error('Invalid API response: Missing content.');
      }

      // ✅ Extract the `content` field safely
      // eslint-disable-next-line @typescript-eslint/no-unsafe-assignment, @typescript-eslint/no-unsafe-member-access
      const rawContent: string = apiResponse.data.choices[0].message.content;
      // ✅ Extract and type the response content
      // const contentString: string | null =
      //   apiResponse.data.choices?.[0]?.message?.content ?? null;

      // if (!contentString) {
      //   throw new Error('API response content is missing.');
      // }

      // if (!contentString) {
      //   throw new Error('API response content is missing.');
      // }

      // // ✅ Parse JSON with strong typing
      // let parsedContent: OpenAIResponse;
      // try {
      //   parsedContent = JSON.parse(contentString) as OpenAIResponse;
      // } catch (error) {
      //   throw new Error('Failed to parse API response content as JSON.');
      // }

      // // ✅ Extract structured data safely
      // const nutrientResult: NutrientResult = parsedContent.Result;

      // const formattedResult = {
      //   protein: nutrientResult.Protein,
      //   carbs: nutrientResult.Carbs,
      //   fats: nutrientResult.Fats,
      //   calories: nutrientResult.Calories,
      //   comments: nutrientResult.Comments,
      //   grade: nutrientResult.Grade,
      //   foodDescription: nutrientResult.FoodDescription,
      // };

      // // ✅ Debugging output
      // console.log(util.inspect(formattedResult, { depth: null }));

      // ✅ Return strongly typed result

      // // Extract token usage from API response
      // const promptTokens = result.usage?.prompt_tokens || 0;
      // const completionTokens = result.usage?.completion_tokens || 0;
      // const totalTokens = result.usage?.total_tokens || 0;

      // // Fetch token cost from config
      // const inputTokenCost = parseFloat(
      //   this.configService.get('OCR.INPUT_TOKEN_COST', '0'),
      // );
      // const outputTokenCost = parseFloat(
      //   this.configService.get('OCR.OUTPUT_TOKEN_COST', '0'),
      // );

      // // Prepare log request object
      // const requestLog: OpenAIIntegrationLogRequest = {
      //   fileName: filename,
      //   prompt: prompt,
      // };

      // // Prepare log entry
      // const openAIIntegrationLog: OpenAIIntegrationLog = {
      //   actionUrl: docType,
      //   request: JSON.stringify(requestLog),
      //   response: JSON.stringify(result),
      //   promptToken: promptTokens,
      //   completionToken: completionTokens,
      //   totalCost:
      //     promptTokens * inputTokenCost + completionTokens * outputTokenCost,
      //   creatorUserId: null, // Adjust this based on session handling
      //   caseNo: caseNo,
      // };

      // // Save log to DB (implement this method in a log service)
      // await this.createOpenAIIntegrationLog(openAIIntegrationLog);
      console.log(util.inspect(apiResponse, { depth: null }));

      return rawContent;
    } catch (error) {
      throw new HttpException(
        `Error calling OpenAI API: ${error}`,
        HttpStatus.INTERNAL_SERVER_ERROR,
      );
    }
  }

  async extractMealNutrients(
    imageBase64String: string,
    userId: number,
  ): Promise<MealQuestionResponse | MealResultResponse> {
    const input = {
      model: 'gpt-4o',
      max_tokens: 4095,
      temperature: 1,
      top_p: 1,
      frequency_penalty: 0,
      presence_penalty: 0,
      messages: [
        {
          role: 'user',
          content: [
            { type: 'text', text: this.prompt },
            {
              type: 'image_url',
              image_url: { url: `data:image/jpeg;base64,${imageBase64String}` },
            },
          ],
        },
      ],
    };

    try {
      // Call OpenAI API
      const apiResponse = await lastValueFrom(
        this.httpService.post(
          'https://api.openai.com/v1/chat/completions',
          input,
          {
            headers: {
              Authorization: `Bearer ${this.openApiKey}`,
              'Content-Type': 'application/json',
            },
          },
        ),
      );

      if (!apiResponse?.data?.choices?.[0]?.message?.content) {
        throw new Error('Invalid API response: Missing content.');
      }

      // Extract the raw response as a JSON string
      const rawContent: string = apiResponse.data.choices[0].message.content;

      // Attempt to parse the JSON response
      let parsedContent: any;
      try {
        parsedContent = JSON.parse(rawContent);
      } catch (jsonError) {
        throw new HttpException(
          `Error parsing AI response JSON: ${jsonError.message}`,
          HttpStatus.INTERNAL_SERVER_ERROR,
        );
      }

      // Handle different response types
      if (parsedContent.ResponseType === 'Question') {
        return this.mapToQuestionResponse(parsedContent);
      } else if (parsedContent.ResponseType === 'NutrientResult') {
        return this.mapToNutrientResult(parsedContent);
      } else {
        throw new HttpException(
          'Unexpected AI response type.',
          HttpStatus.BAD_REQUEST,
        );
      }
    } catch (error) {
      throw new HttpException(
        `Error calling OpenAI API: ${error.message}`,
        HttpStatus.INTERNAL_SERVER_ERROR,
      );
    }
  }

  /**
   * Maps AI Question response to MealQuestionResponse DTO
   */
  private mapToQuestionResponse(parsedContent: any): MealQuestionResponse {
    return {
      ResponseType: 'Question',
      // eslint-disable-next-line @typescript-eslint/no-unsafe-call
      questionList: parsedContent.Result.Question.map((q: any) => ({
        question: Object.keys(q)[0],
        options: Object.values(q)[0],
      })),
    };
  }

  /**
   * Maps AI Nutrient result response to MealResultResponse DTO
   */
  private mapToNutrientResult(parsedContent: any): MealResultResponse {
    const mainMeal = this.mapToUserMealOutput(parsedContent.Result);

    // eslint-disable-next-line @typescript-eslint/no-unsafe-call
    const subMealList: UserSubMealOutput[] =
      // eslint-disable-next-line @typescript-eslint/no-unsafe-call
      parsedContent.Result.FoodDescription.map((food: any) => {
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
      weight: parseFloat(details.Weight), // Convert to number if needed
      calories: details.Calories,
      protein: details.Protein,
      fats: details.Fats,
      carbs: details.Carbs,
      mainMeal: null,
    };
  }

  /**
   * Maps AI food data to UserMealOutputDto
   */
  private mapToUserMealOutput(data: any): UserMealOutputDto {
    return {
      id: Math.floor(Math.random() * 10000), // Generate random ID (replace with real ID logic if needed)
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

  // Placeholder: Fetch prompt text by name (implement logic as needed)
  // private getPromptByPromptName(promptName: string): string {
  //   return `Generated prompt for ${promptName}`;
  // }

  // // Placeholder: Save log to database (implement real DB saving)
  // private async createOpenAIIntegrationLog(
  //   log: OpenAIIntegrationLog,
  // ): Promise<void> {
  //   console.log('Saving OpenAI log:', log);
  //   // Implement database save logic
  // }
}
