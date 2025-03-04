import { TypeOrmCrudService } from '@nestjsx/crud-typeorm';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { UserMealLogEntity } from './UserMealLog.entity';

@Injectable()
export class UserMealLogService extends TypeOrmCrudService<UserMealLogEntity>{

    constructor(@InjectRepository(UserMealLogEntity) repo) {
        super(repo);
    }

}
