import {
  IsOptional,
  IsString,
  IsArray,
  IsNotEmpty,
  IsNumber,
  IsInt,
} from 'class-validator';

export class UpdateUserMealQuestionDto {
  @IsNotEmpty()
  @IsInt()
  id: number;

  @IsOptional()
  @IsString()
  question?: string;

  @IsOptional()
  @IsArray()
  @IsString({ each: true })
  options?: string[];

  @IsOptional()
  @IsString()
  answer?: string;
}
