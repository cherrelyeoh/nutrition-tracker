import { TypeOrmCrudService } from '@nestjsx/crud-typeorm';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { AIIntegrationLogsEntity } from './AIIntegrationLogs.entity';

@Injectable()
export class AIIntegrationLogsService extends TypeOrmCrudService<AIIntegrationLogsEntity> {
  constructor(@InjectRepository(AIIntegrationLogsEntity) repo) {
    super(repo);
  }

  create(
    logAI: Partial<AIIntegrationLogsEntity>,
  ): Promise<AIIntegrationLogsEntity> {
    const newLog = this.repo.create(logAI);
    return this.repo.save(newLog);
  }
}
