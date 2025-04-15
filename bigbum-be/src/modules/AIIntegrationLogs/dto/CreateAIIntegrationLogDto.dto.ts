import {
  IsString,
  IsInt,
  IsOptional,
  IsNumber,
  IsNotEmpty,
} from 'class-validator';

export class CreateAIIntegrationLogDto {
  @IsString()
  @IsNotEmpty()
  actionUrl: string;

  @IsString()
  @IsNotEmpty()
  request: string;

  @IsString()
  @IsNotEmpty()
  response: string;

  @IsString()
  @IsNotEmpty()
  responseType: string;

  @IsInt()
  @IsOptional()
  requestDuration?: number;

  @IsInt()
  @IsNotEmpty()
  promptToken: number;

  @IsNumber()
  @IsOptional()
  cost?: number;

  @IsInt()
  @IsOptional()
  promptTypeId?: number; // For AIPromptEntity relation

  @IsInt()
  @IsOptional()
  createdById?: number; // For UserEntity relation
}
