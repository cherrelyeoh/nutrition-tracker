import { MealQuestionResponse } from 'src/modules/UserMealLog/dto/MealQuestionResponse.dto';
import { MealResultResponse } from 'src/modules/UserMealLog/dto/MealResultResponse.dto';

export abstract class AIIntegrationService {
  abstract testFunction(imageBase64String: string): Promise<string>;

  abstract extractMealNutrients(
    imageBase64String: string,
    userId: number,
  ): Promise<MealQuestionResponse | MealResultResponse>;
}
