import { PartialType } from '@nestjs/mapped-types';
import { CreateAIPromptDto } from './CreateAIPromptDto.dto';

export class UpdateAIPromptDto extends PartialType(CreateAIPromptDto) {}
