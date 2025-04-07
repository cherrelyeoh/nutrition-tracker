import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserIntakeTargetController } from './UserIntakeTarget.controller';
import { UserIntakeTargetEntity } from './UserIntakeTarget.entity';
import { UserIntakeTargetService } from './UserIntakeTarget.service';

@Module({
  imports: [TypeOrmModule.forFeature([UserIntakeTargetEntity])],
  providers: [UserIntakeTargetService],
  controllers: [UserIntakeTargetController],
})
export class UserIntakeTargetModule {}
