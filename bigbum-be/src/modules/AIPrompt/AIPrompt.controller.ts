import { Body, Controller, Post } from '@nestjs/common';
import { Crud } from '@dataui/crud';
import { AIPromptService } from './AIPrompt.service';
import { AIPromptEntity } from './AIPrompt.entity';
import { RouteMetadata } from 'nestjs-gis';
import { ApiBody, ApiOkResponse } from '@nestjs/swagger';

@RouteMetadata()
@Crud({
  model: { type: AIPromptEntity },
  params: {},
})
@Controller('rest/AIPrompt')
export class AIPromptController {
  constructor(private service: AIPromptService) {}

  @Post('testFunction')
  @ApiBody({
    schema: {
      type: 'object',
      properties: {
        imageBase64: { type: 'string', description: 'Base64-encoded image' },
      },
    },
  })
  @ApiOkResponse({ description: 'Success' })
  async testFunction(
    @Body('imageBase64') imageBase64: string,
  ): Promise<string> {
    return this.service.testAIFunction(imageBase64);
  }
}
