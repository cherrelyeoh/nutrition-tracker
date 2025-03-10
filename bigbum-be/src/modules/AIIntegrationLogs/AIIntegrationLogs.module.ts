import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AIIntegrationLogsController } from './AIIntegrationLogs.controller';
import { AIIntegrationLogsEntity } from './AIIntegrationLogs.entity';
import { AIIntegrationLogsService } from './AIIntegrationLogs.service';

@Module({
  imports: [TypeOrmModule.forFeature([AIIntegrationLogsEntity])],
  providers: [AIIntegrationLogsService],
  controllers: [AIIntegrationLogsController],
  exports: [AIIntegrationLogsService],
})
export class AIIntegrationLogsModule {}
