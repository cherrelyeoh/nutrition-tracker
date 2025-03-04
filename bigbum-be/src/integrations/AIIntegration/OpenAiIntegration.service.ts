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
interface NutrientResult {
  Protein: string;
  Carbs: string;
  Fats: string;
  Calories: string;
  Comments: string;
  Grade: number;
  FoodDescription: Record<
    string,
    {
      Weight: string;
      Calories: string;
      Protein: string;
      Fats: string;
      Carbs: string;
    }
  >[];
}

interface OpenAIResponse {
  ResponseType: string;
  Result: NutrientResult;
}

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

  async testFunction(
    // docType: string,
    imageBase64String: string,
    // filename: string,
    // caseNo: string,
  ): Promise<string> {
    // const prompt = this.getPromptByPromptName(docType);
    const prompt = `Please analyze the meal image provided and estimate its calorie content and macronutrient breakdown (protein, fats, and carbohydrates).
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

Estimation Guidance: The breakdown must include a reasonable weight estimation (based on visual size) for each food item, and all nutritional values should be consistent with the weights provided.

Ensure all responses strictly adhere to one of these formats and avoid assumptions when insufficient details are provided.`;

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
