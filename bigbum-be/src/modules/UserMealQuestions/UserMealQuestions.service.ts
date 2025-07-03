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
      // Load with relations so userMealLog is available in response
      const entity = await this.repo.findOne({
        where: { id: dto.id },
        relations: ['userMealLog'], // 👈 load relation here
      });

      if (!entity) continue;

      // Apply updates if defined
      if (dto.question !== undefined) {
        entity.question = dto.question;
      }

      if (dto.options !== undefined) {
        entity.options = dto.options;
      }

      if (dto.answer !== undefined) {
        entity.answer = dto.answer;
      }

      const saved = await this.repo.save(entity);

      // Reload with relation to ensure it's fresh (optional if already loaded above)
      const savedWithRelation = await this.repo.findOne({
        where: { id: saved.id },
        relations: ['userMealLog'],
      });

      if (savedWithRelation) {
        updatedEntities.push(savedWithRelation);
      }
    }

    return updatedEntities;
  }
}
