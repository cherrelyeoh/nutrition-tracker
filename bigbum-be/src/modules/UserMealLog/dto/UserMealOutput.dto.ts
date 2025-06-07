import { ApiProperty } from '@nestjs/swagger';

export class UserMealOutputDto {
  @ApiProperty()
  id: number;

  @ApiProperty()
  mealImage: string;

  @ApiProperty()
  mealType: string;

  @ApiProperty()
  mealName: string;

  @ApiProperty()
  weight: number;

  @ApiProperty()
  calories: number;

  @ApiProperty()
  protein: number;

  @ApiProperty()
  fats: number;

  @ApiProperty()
  carbs: number;

  @ApiProperty()
  mealLevel: number;

  @ApiProperty()
  comments?: string;
}
