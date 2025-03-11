import { IsNotEmpty, IsString, IsArray } from 'class-validator';

export class CreateUserMealQuestionDto {
  @IsNotEmpty()
  @IsString()
  question: string;

  @IsArray()
  @IsNotEmpty()
  @IsString({ each: true })
  options: string[];

  //   @IsArray()
  //   @IsString({ each: true })
  //   answer?: string[];
}
