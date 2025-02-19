import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserBiodataLogsController } from './UserBiodataLogs.controller';
import { UserBiodataLogsEntity } from './UserBiodataLogs.entity';
import { UserBiodataLogsService } from './UserBiodataLogs.service';

@Module({
  imports: [TypeOrmModule.forFeature([UserBiodataLogsEntity])],
  providers: [UserBiodataLogsService],
  controllers: [UserBiodataLogsController],
})
export class UserBiodataLogsModule {}
