import { Controller } from '@nestjs/common';
import { Crud } from '@nestjsx/crud';
import { AIPromptService } from './AIPrompt.service';
import { AIPromptEntity } from './AIPrompt.entity';
import { RouteMetadata } from 'nestjs-gis';

@RouteMetadata()
@Crud({
  model: { type: AIPromptEntity },
  params: {},
})
@Controller('rest/AIPrompt')
export class AIPromptController {
  constructor(private service: AIPromptService) {}
}
