import { Controller } from '@nestjs/common';
import { Crud } from '@dataui/crud';
import { AIIntegrationLogsService } from './AIIntegrationLogs.service';
import { AIIntegrationLogsEntity } from './AIIntegrationLogs.entity';
import { RouteMetadata } from 'nestjs-gis';
import { CreateAIIntegrationLogDto } from './dto/CreateAIIntegrationLogDto.dto';
import { UpdateAIIntegrationLogDto } from './dto/UpdateAIIntegrationLogDto.dto';

@RouteMetadata()
@Crud({
  model: { type: AIIntegrationLogsEntity },
  params: {},
  dto: {
    create: CreateAIIntegrationLogDto,
    update: UpdateAIIntegrationLogDto,
  },
})
@Controller('rest/AIIntegrationLogs')
export class AIIntegrationLogsController {
  constructor(private service: AIIntegrationLogsService) {}
}
