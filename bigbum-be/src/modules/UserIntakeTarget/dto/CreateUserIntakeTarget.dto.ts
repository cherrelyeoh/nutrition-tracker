import { IsEnum, IsInt, IsPositive, IsString } from 'class-validator';
import { MainMacro } from '../UserIntakeTarget.constants';

export class CreateUserIntakeTargetDto {
  @IsInt()
  userId: number;

  @IsPositive()
  calorie: number;

  @IsPositive()
  fats: number;

  @IsPositive()
  carbs: number;

  @IsPositive()
  protein: number;

  @IsEnum(MainMacro)
  mainMacro: MainMacro;

  @IsString()
  createdBy: string;
}
