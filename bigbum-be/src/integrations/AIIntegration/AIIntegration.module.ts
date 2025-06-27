import { Module } from '@nestjs/common';
import { AIIntegrationService } from './AIIntegration.abstract';
import { OpenAiIntegrationService } from './OpenAiIntegration.service';
import { HttpModule } from '@nestjs/axios';
import { MockAiIntegrationService } from './MockAiIntegration.service';
// import { TypeOrmModule } from '@nestjs/typeorm';
// import { AIIntegrationController } from './AIIntegration.controller';
// import { AIIntegrationEntity } from './AIIntegration.entity';

@Module({
  imports: [HttpModule],
  providers: [
    {
      provide: AIIntegrationService,
      useClass: MockAiIntegrationService,
    },
  ],
  exports: [AIIntegrationService],
})
export class AIIntegrationModule {}
