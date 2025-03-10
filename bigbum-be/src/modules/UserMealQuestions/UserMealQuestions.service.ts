import { TypeOrmCrudService } from '@nestjsx/crud-typeorm';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { UserMealQuestionsEntity } from './UserMealQuestions.entity';

@Injectable()
export class UserMealQuestionsService extends TypeOrmCrudService<UserMealQuestionsEntity> {
  constructor(@InjectRepository(UserMealQuestionsEntity) repo) {
    super(repo);
  }

  async create(
    input: UserMealQuestionsEntity,
  ): Promise<UserMealQuestionsEntity> {
    const entity = this.repo.create(input);
    return await this.repo.save(entity);
  }
}
