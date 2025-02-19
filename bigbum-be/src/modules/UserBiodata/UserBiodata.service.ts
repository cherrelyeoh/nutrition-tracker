import { TypeOrmCrudService } from '@nestjsx/crud-typeorm';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { UserBiodataEntity } from './UserBiodata.entity';

@Injectable()
export class UserBiodataService extends TypeOrmCrudService<UserBiodataEntity> {
  constructor(@InjectRepository(UserBiodataEntity) repo) {
    super(repo);
  }
}
