import { PartialType } from '@nestjs/mapped-types';
import { CreateAIIntegrationLogDto } from './CreateAIIntegrationLogDto.dto';

export class UpdateAIIntegrationLogDto extends PartialType(
  CreateAIIntegrationLogDto,
) {}
