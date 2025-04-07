import { IsEnum, IsPositive, IsOptional, IsString } from 'class-validator';
import { MainMacro } from '../UserIntakeTarget.constants';

export class UpdateUserIntakeTargetDto {
  @IsOptional()
  @IsPositive()
  calorie?: number;

  @IsOptional()
  @IsPositive()
  fats?: number;

  @IsOptional()
  @IsPositive()
  carbs?: number;

  @IsOptional()
  @IsPositive()
  protein?: number;

  @IsOptional()
  @IsEnum(MainMacro)
  mainMacro?: MainMacro;

  @IsOptional()
  @IsString()
  createdBy?: string;
}
