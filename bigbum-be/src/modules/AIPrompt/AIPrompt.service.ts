import { TypeOrmCrudService } from '@nestjsx/crud-typeorm';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { AIPromptEntity } from './AIPrompt.entity';

@Injectable()
export class AIPromptService extends TypeOrmCrudService<AIPromptEntity>{

    constructor(@InjectRepository(AIPromptEntity) repo) {
        super(repo);
    }

}
