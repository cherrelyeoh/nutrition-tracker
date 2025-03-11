import {
  IsOptional,
  IsString,
  IsArray,
  IsNotEmpty,
  IsNumber,
} from 'class-validator';

export class UpdateUserMealQuestionDto {
  @IsNotEmpty()
  @IsNumber()
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
