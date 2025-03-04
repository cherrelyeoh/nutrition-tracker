import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AIPromptController } from './AIPrompt.controller';
import { AIPromptEntity } from './AIPrompt.entity';
import { AIPromptService } from './AIPrompt.service';

@Module({
  imports: [TypeOrmModule.forFeature([AIPromptEntity])],
  providers: [AIPromptService],
  controllers: [AIPromptController]
})
export class AIPromptModule { }
