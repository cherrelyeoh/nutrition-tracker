import { TypeOrmCrudService } from '@dataui/crud-typeorm';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { UserMealQuestionsEntity } from './UserMealQuestions.entity';
import { UpdateUserMealQuestionDto } from './dto/UpdateUserMealQuestion.dto';

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

  async bulkUpdate(
    updates: UpdateUserMealQuestionDto[],
  ): Promise<UserMealQuestionsEntity[]> {
    const updatedEntities: UserMealQuestionsEntity[] = [];

    for (const dto of updates) {
      const entity = await this.repo.findOneBy({ id: dto.id });
      if (!entity) continue;

      // Apply updates only if present
      if (dto.question !== undefined) {
        console.log(entity.question);
        entity.question = dto.question;
      }

      if (dto.options !== undefined) {
        console.log(entity.options);

        entity.options = dto.options;
      }

      if (dto.answer !== undefined) {
        console.log(entity.answer);

        entity.answer = dto.answer;
      }

      const saved = await this.repo.save(entity);
      updatedEntities.push(saved);
    }

    return updatedEntities;
  }
}
