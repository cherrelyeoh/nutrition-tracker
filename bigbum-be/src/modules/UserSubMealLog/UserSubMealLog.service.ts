import { TypeOrmCrudService } from '@dataui/crud-typeorm';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { UserSubMealLogEntity } from './UserSubMealLog.entity';

@Injectable()
export class UserSubMealLogService extends TypeOrmCrudService<UserSubMealLogEntity> {
  constructor(@InjectRepository(UserSubMealLogEntity) repo) {
    super(repo);
  }

  async create(
    input: Partial<UserSubMealLogEntity>,
  ): Promise<UserSubMealLogEntity> {
    const entity = this.repo.create(input);
    return await this.repo.save(entity);
  }

  async findByMainMealId(mainMealId: number): Promise<UserSubMealLogEntity[]> {
    return this.repo.find({
      where: {
        mainMeal: { id: mainMealId },
      },
      relations: ['mainMeal'],
    });
  }
}
