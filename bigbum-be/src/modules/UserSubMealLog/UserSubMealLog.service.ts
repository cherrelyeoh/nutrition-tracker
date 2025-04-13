import { TypeOrmCrudService } from '@dataui/crud-typeorm';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { UserSubMealLogEntity } from './UserSubMealLog.entity';

@Injectable()
export class UserSubMealLogService extends TypeOrmCrudService<UserSubMealLogEntity> {
  constructor(@InjectRepository(UserSubMealLogEntity) repo) {
    super(repo);
  }
}
