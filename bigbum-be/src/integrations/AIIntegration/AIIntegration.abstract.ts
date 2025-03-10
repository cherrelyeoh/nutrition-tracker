import { MealQuestionResponse } from 'src/modules/UserMealQuestions/dto/MealQuestionResponse.dto';
import { MealResultResponse } from 'src/modules/UserMealLog/dto/MealResultResponse.dto';

export abstract class AIIntegrationService {
  abstract testFunction(imageBase64String: string): Promise<string>;

  abstract AIPromptWithImage(
    imageBase64String: string,
    prompt: string,
  ): Promise<any>;
}
