import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserBiodataController } from './UserBiodata.controller';
import { UserBiodataEntity } from './UserBiodata.entity';
import { UserBiodataService } from './UserBiodata.service';

@Module({
  imports: [TypeOrmModule.forFeature([UserBiodataEntity])],
  providers: [UserBiodataService],
  controllers: [UserBiodataController],
  exports: [UserBiodataService],
})
export class UserBiodataModule {}
