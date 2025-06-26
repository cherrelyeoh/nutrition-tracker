import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserBiodataController } from './UserBiodata.controller';
import { UserBiodataEntity } from './UserBiodata.entity';
import { UserBiodataService } from './UserBiodata.service';
import { AIPromptModule } from '../AIPrompt/AIPrompt.module';
import { AIIntegrationLogsModule } from '../AIIntegrationLogs/AIIntegrationLogs.module';
import { AIIntegrationModule } from 'src/integrations/AIIntegration/AIIntegration.module';
import { UserModule } from '../User/User.module';

@Module({
  imports: [
    TypeOrmModule.forFeature([UserBiodataEntity]),
    AIPromptModule,
    AIIntegrationLogsModule,
    AIIntegrationModule,
    UserModule,
  ],
  providers: [UserBiodataService],
  controllers: [UserBiodataController],
  exports: [UserBiodataService],
})
export class UserBiodataModule {}
