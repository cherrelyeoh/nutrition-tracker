import { TypeOrmCrudService } from '@nestjsx/crud-typeorm';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { AIIntegrationLogsEntity } from './AIIntegrationLogs.entity';

@Injectable()
export class AIIntegrationLogsService extends TypeOrmCrudService<AIIntegrationLogsEntity>{

    constructor(@InjectRepository(AIIntegrationLogsEntity) repo) {
        super(repo);
    }

}
