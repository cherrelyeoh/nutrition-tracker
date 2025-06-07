import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserSubMealLogController } from './UserSubMealLog.controller';
import { UserSubMealLogEntity } from './UserSubMealLog.entity';
import { UserSubMealLogService } from './UserSubMealLog.service';

@Module({
  imports: [TypeOrmModule.forFeature([UserSubMealLogEntity])],
  providers: [UserSubMealLogService],
  controllers: [UserSubMealLogController],
  exports: [UserSubMealLogService],
})
export class UserSubMealLogModule {}
