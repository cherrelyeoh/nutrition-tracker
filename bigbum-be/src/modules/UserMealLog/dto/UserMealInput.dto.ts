import { ApiProperty, ApiPropertyOptional } from '@nestjs/swagger';
import { MealType } from '../UserMealLog.constants';

export class UserMealInputDto {
  @ApiProperty()
  userId: number;

  @ApiPropertyOptional()
  userMealId?: number;

  @ApiPropertyOptional()
  mealImage?: string;

  @ApiProperty()
  mealName: string;

  @ApiProperty()
  mealType: string;

  @ApiProperty()
  dateOfMeal: Date;
}
