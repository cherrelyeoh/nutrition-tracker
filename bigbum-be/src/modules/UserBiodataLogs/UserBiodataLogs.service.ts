import { TypeOrmCrudService } from '@dataui/crud-typeorm';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { UserBiodataLogsEntity } from './UserBiodataLogs.entity';

@Injectable()
export class UserBiodataLogsService extends TypeOrmCrudService<UserBiodataLogsEntity> {
  constructor(@InjectRepository(UserBiodataLogsEntity) repo) {
    super(repo);
  }
}
