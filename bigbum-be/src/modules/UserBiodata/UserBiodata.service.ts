import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { UserBiodataEntity } from './UserBiodata.entity';
import { Repository } from 'typeorm';
import { TypeOrmCrudService } from '@dataui/crud-typeorm';

@Injectable()
export class UserBiodataService extends TypeOrmCrudService<UserBiodataEntity> {
  constructor(
    @InjectRepository(UserBiodataEntity)
    public repo: Repository<UserBiodataEntity>,
  ) {
    super(repo);

    // Debugging logs
    console.log('Repository initialized:', !!repo);
    console.log('Repository manager:', !!repo?.manager);
    console.log('Connection state:', repo?.manager?.connection?.isInitialized);

    // Ensure CRUD options exist
    if (!(this as any).options) {
      (this as any).options = {
        query: {
          alwaysPaginate: true,
          limit: 10,
          maxLimit: 100,
          join: {
            user: { eager: true },
          },
        },
      };
    }
  }
}
