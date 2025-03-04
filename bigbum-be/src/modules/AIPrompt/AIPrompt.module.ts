import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AIPromptController } from './AIPrompt.controller';
import { AIPromptEntity } from './AIPrompt.entity';
import { AIPromptService } from './AIPrompt.service';
import { AIIntegrationModule } from 'src/integrations/AIIntegration/AIIntegration.module';

@Module({
  imports: [TypeOrmModule.forFeature([AIPromptEntity]), AIIntegrationModule],
  providers: [AIPromptService],
  controllers: [AIPromptController],
})
export class AIPromptModule {}
