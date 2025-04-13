import { Controller } from '@nestjs/common';
import { Crud } from '@dataui/crud';
import { AIIntegrationLogsService } from './AIIntegrationLogs.service';
import { AIIntegrationLogsEntity } from './AIIntegrationLogs.entity';
import { RouteMetadata } from 'nestjs-gis';

@RouteMetadata()
@Crud({
  model: { type: AIIntegrationLogsEntity },
  params: {},
})
@Controller('rest/AIIntegrationLogs')
export class AIIntegrationLogsController {
  constructor(private service: AIIntegrationLogsService) {}
}
