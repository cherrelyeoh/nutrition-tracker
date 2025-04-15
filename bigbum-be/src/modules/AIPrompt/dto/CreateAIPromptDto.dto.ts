import { IsString, IsNotEmpty } from 'class-validator';

export class CreateAIPromptDto {
  @IsString()
  @IsNotEmpty()
  promptName: string;

  @IsString()
  @IsNotEmpty()
  promptRequest: string;

  @IsString()
  @IsNotEmpty()
  createdBy: string;
}
