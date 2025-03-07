import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserMealLogController } from './UserMealLog.controller';
import { UserMealLogEntity } from './UserMealLog.entity';
import { UserMealLogService } from './UserMealLog.service';
import { AIIntegrationModule } from 'src/integrations/AIIntegration/AIIntegration.module';

@Module({
  imports: [TypeOrmModule.forFeature([UserMealLogEntity]), AIIntegrationModule],
  providers: [UserMealLogService],
  controllers: [UserMealLogController],
})
export class UserMealLogModule {}
