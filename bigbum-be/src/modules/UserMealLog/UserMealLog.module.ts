import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserMealLogController } from './UserMealLog.controller';
import { UserMealLogEntity } from './UserMealLog.entity';
import { UserMealLogService } from './UserMealLog.service';
import { AIIntegrationModule } from 'src/integrations/AIIntegration/AIIntegration.module';
import { AIIntegrationLogsModule } from '../AIIntegrationLogs/AIIntegrationLogs.module';
import { AIPromptModule } from '../AIPrompt/AIPrompt.module';
import { UserModule } from '../User/User.module';

@Module({
  imports: [
    TypeOrmModule.forFeature([UserMealLogEntity]),
    AIIntegrationModule,
    AIIntegrationLogsModule,
    AIPromptModule,
    UserModule,
  ],
  providers: [UserMealLogService],
  controllers: [UserMealLogController],
})
export class UserMealLogModule {}
