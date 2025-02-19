import { Controller } from '@nestjs/common';
import { Crud } from '@nestjsx/crud';
import { UserBiodataLogsService } from './UserBiodataLogs.service';
import { UserBiodataLogsEntity } from './UserBiodataLogs.entity';
import { RouteMetadata } from 'nestjs-gis';

@RouteMetadata()
@Crud({
  model: { type: UserBiodataLogsEntity },
  params: {},
})
@Controller('rest/UserBiodataLogs')
export class UserBiodataLogsController {
  constructor(private service: UserBiodataLogsService) {}
}
