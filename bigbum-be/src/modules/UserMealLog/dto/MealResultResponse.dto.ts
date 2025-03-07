import { ApiProperty } from '@nestjs/swagger';
import { UserMealOutputDto } from './UserMealOutput.dto';
import { BaseResponseDto } from './BaseResponse.dto';
import { UserSubMealOutput } from 'src/modules/UserSubMealLog/dto/UserSubMealOutput.dto';

export class MealResultResponse extends BaseResponseDto {
  ResponseType: 'NutrientResult';
  @ApiProperty()
  mainMeal: UserMealOutputDto;
  @ApiProperty()
  subMealList: UserSubMealOutput[];
}
