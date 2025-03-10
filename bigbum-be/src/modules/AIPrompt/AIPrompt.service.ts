import { TypeOrmCrudService } from '@nestjsx/crud-typeorm';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { AIPromptEntity } from './AIPrompt.entity';
import { AIIntegrationService } from '../../integrations/AIIntegration/AIIntegration.abstract';
import { promises as fs } from 'fs';
import * as path from 'path';

@Injectable()
export class AIPromptService extends TypeOrmCrudService<AIPromptEntity> {
  constructor(
    @InjectRepository(AIPromptEntity) repo,
    private _aiIntegrationService: AIIntegrationService,
  ) {
    super(repo);
  }

  async getOneFromName(promptName: string): Promise<AIPromptEntity> {
    const prompt = await this.repo.findOneBy({ promptName });
    return prompt;
  }
  async testAIFunction(image: string) {
    const base64Value = await this.convertImageToBase();
    return await this._aiIntegrationService.testFunction(base64Value);
  }

  async convertImageToBase(): Promise<string> {
    try {
      // Define the file path
      const filePath = path.join(
        process.cwd(),
        'src',
        'test',
        'data',
        'testdata.jpg',
      );
      // Read the image file as a Buffer
      const imageBuffer = await fs.readFile(filePath);

      // Convert to Base64 string
      const base64String = imageBuffer.toString('base64');

      return base64String;
    } catch (error) {
      console.error('Error reading image file:', error);
      throw new Error('Failed to convert image to Base64');
    }
  }
}
