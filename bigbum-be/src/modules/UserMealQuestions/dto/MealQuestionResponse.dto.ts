import { ApiProperty } from '@nestjs/swagger';
import { BaseResponseDto } from '../../UserMealLog/dto/BaseResponse.dto';

export class MealQuestionResponse extends BaseResponseDto {
  ResponseType: 'Question';

  @ApiProperty()
  questionList: MealQuestions[];
}

export class MealQuestions {
  question: string;
  options: string[];
}
