import { TypeOrmCrudService } from '@nestjsx/crud-typeorm';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { UserMealLogEntity } from './UserMealLog.entity';
import { UserMealInputDto } from './dto/UserMealInput.dto';
import { AIIntegrationService } from 'src/integrations/AIIntegration/AIIntegration.abstract';
import { MealQuestionResponse } from './dto/MealQuestionResponse.dto';
import { MealResultResponse } from './dto/MealResultResponse.dto';

@Injectable()
export class UserMealLogService extends TypeOrmCrudService<UserMealLogEntity> {
  constructor(
    @InjectRepository(UserMealLogEntity) repo,
    private aiIntegrationService: AIIntegrationService,
  ) {
    super(repo);
  }

  async extractNutrientData(
    input: UserMealInputDto,
  ): Promise<MealQuestionResponse | MealResultResponse> {
    const response = await this.aiIntegrationService.extractMealNutrients(
      input.mealImage,
      input.userId,
    );
    return response;
  }
}
