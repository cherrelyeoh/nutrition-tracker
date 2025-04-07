import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { UserIntakeTargetEntity } from './UserIntakeTarget.entity';
import { GISTypeOrmCrudService } from 'nestjs-gis';
import { UpdateUserIntakeTargetDto } from './dto/UpdateUserIntakeTarget.dto';
import { CreateUserIntakeTargetDto } from './dto/CreateUserIntakeTarget.dto';
@Injectable()
export class UserIntakeTargetService extends GISTypeOrmCrudService<UserIntakeTargetEntity> {
  constructor(@InjectRepository(UserIntakeTargetEntity) repo) {
    super(repo);
  }

  /**
   * Create a new user intake target
   */
  async create(
    createDto: CreateUserIntakeTargetDto,
  ): Promise<UserIntakeTargetEntity> {
    const newTarget = this.repo.create(createDto);
    return await this.repo.save(newTarget);
  }

  /**
   * Find all intake targets
   */
  async findAll(): Promise<UserIntakeTargetEntity[]> {
    return await this.repo.find();
  }

  /**
   * Find intake target by user ID
   */
  async findByUserId(userId: number): Promise<UserIntakeTargetEntity> {
    const target = await this.repo.findOne({
      where: { user: { id: userId } },
      relations: ['user'],
    });

    if (!target) {
      throw new NotFoundException(`Target for user ID ${userId} not found`);
    }
    return target;
  }

  //   /**
  //    * Find intake target by ID
  //    */
  //   async findOne(id: number): Promise<UserIntakeTargetEntity> {
  //     const target = await this.repo.findOne({
  //       where: { id },
  //       relations: ['user'],
  //     });

  //     if (!target) {
  //       throw new NotFoundException(`Target with ID ${id} not found`);
  //     }
  //     return target;
  //   }

  /**
   * Update intake target by ID
   */
  async update(
    id: number,
    updateDto: UpdateUserIntakeTargetDto,
  ): Promise<UserIntakeTargetEntity> {
    await this.repo.update(id, updateDto);
    return await this.repo.findOne({ where: { id } });
  }

  /**
   * Soft delete an intake target
   */
  async remove(id: number): Promise<void> {
    const result = await this.repo.softDelete(id);
    if (result.affected === 0) {
      throw new NotFoundException(`Target with ID ${id} not found`);
    }
  }

  /**
   * Restore a soft-deleted intake target
   */
  async restore(id: number): Promise<UserIntakeTargetEntity> {
    await this.repo.restore(id);
    return await this.repo.findOne({ where: { id } });
  }
}
