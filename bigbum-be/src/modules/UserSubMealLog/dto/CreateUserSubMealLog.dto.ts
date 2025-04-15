import { IsInt, IsString, IsNotEmpty, IsOptional } from 'class-validator';

export class CreateUserSubMealLogDto {
  @IsString()
  @IsNotEmpty()
  mealName: string;

  @IsInt()
  weight: number;

  @IsInt()
  calories: number;

  @IsInt()
  protein: number;

  @IsInt()
  fats: number;

  @IsInt()
  carbs: number;

  @IsInt()
  @IsOptional()
  mainMealId?: number;

  @IsInt()
  @IsNotEmpty()
  createdById: number;
}
