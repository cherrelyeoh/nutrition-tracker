/* eslint-disable @typescript-eslint/no-unsafe-argument */
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

If additional information is needed, ask follow-up questions in the following structured format:  

{
    "ResponseType": "Question",
    "Result": {
        "QuestionsList": [
            {
                "Question": "What is the serving size of rice?",
                "Options": ["50g", "100g", "150g"],
            },
            {
                "Question": "What type of meat is in the curry?",
                "Options": ["Chicken", "Mutton", "Beef"],
            }
        ]
    }
}

- Each question must provide **only multiple-choice options**.  
- The "SelectedOption" field will be filled once the user makes a selection.  

Once you have sufficient information, return the nutritional analysis in the following format:  

{
    "ResponseType": "NutrientResult",
    "Result": {
        "Protein": "56",
        "Carbs": "20",
        "Fats": "5",
        "Calories": "500",
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

If the input is invalid or cannot be processed, respond in the following error format:  

{
    "ResponseType": "Error",
    "Result": {
        "Message": "This is not a food image."
    }
}
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

  async AIPromptWithImage(
    imageBase64String: string,
    prompt: string,
  ): Promise<any> {
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
            { type: 'text', text: prompt },
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

      // if (!apiResponse?.data?.choices?.[0]?.message?.content) {
      //   throw new Error('Invalid API response: Missing content.');
      // }

      // Extract the raw response as a JSON string
      // const rawContent: string = apiResponse.data.choices[0].message.content;

      const rawContent: string = apiResponse.data;

      // // Attempt to parse the JSON response
      // let parsedContent: any;
      // try {
      //   parsedContent = JSON.stringify(rawContent);
      // } catch (jsonError) {
      //   throw new HttpException(
      //     `Error parsing AI response JSON: ${jsonError.message}`,
      //     HttpStatus.INTERNAL_SERVER_ERROR,
      //   );
      // }

      return rawContent;
      // // Handle different response types
      // if (parsedContent.ResponseType === 'Question') {
      //   return this.mapToQuestionResponse(parsedContent);
      // } else if (parsedContent.ResponseType === 'NutrientResult') {
      //   return this.mapToNutrientResult(parsedContent);
      // } else {
      //   throw new HttpException(
      //     'Unexpected AI response type.',
      //     HttpStatus.BAD_REQUEST,
      //   );
      // }
    } catch (error) {
      throw new HttpException(
        `Error calling OpenAI API: ${error.message}`,
        HttpStatus.INTERNAL_SERVER_ERROR,
      );
    }
  }

  accessRawContent(data: any): Promise<any> {
    const rawContent: string = data.choices[0].message.content;

    let parsedContent: any;
    try {
      parsedContent = JSON.parse(rawContent);
    } catch (jsonError) {
      throw new HttpException(
        `Error parsing AI response JSON: ${jsonError.message}`,
        HttpStatus.INTERNAL_SERVER_ERROR,
      );
    }

    // eslint-disable-next-line @typescript-eslint/no-unsafe-return
    return parsedContent;
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

  private readonly tokenCostPer1000: Record<
    string,
    { input: number; output: number }
  > = {
    'gpt-4-turbo': { input: 0.01, output: 0.03 }, // Example cost per 1K tokens
    'gpt-4': { input: 0.03, output: 0.06 },
    'gpt-3.5-turbo': { input: 0.001, output: 0.002 },
    'gpt-4o': { input: 0.005, output: 0.015 }, // GPT-4o pricing per 1K tokens
  };

  calculateTokenCost(inputTokens: number, outputTokens: number): number {
    const cost = this.tokenCostPer1000['gpt-4o'];
    const inputCost = (inputTokens / 1000) * cost.input;
    const outputCost = (outputTokens / 1000) * cost.output;

    return parseFloat((inputCost + outputCost).toFixed(6)); // Round to 6 decimal places
  }
}
