import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserMealLogController } from './UserMealLog.controller';
import { UserMealLogEntity } from './UserMealLog.entity';
import { UserMealLogService } from './UserMealLog.service';

@Module({
  imports: [TypeOrmModule.forFeature([UserMealLogEntity])],
  providers: [UserMealLogService],
  controllers: [UserMealLogController],
})
export class UserMealLogModule {}
