import { Controller } from '@nestjs/common';
import { Crud } from '@dataui/crud';
import { UserBiodataLogsService } from './UserBiodataLogs.service';
import { UserBiodataLogsEntity } from './UserBiodataLogs.entity';
import { RouteMetadata } from 'nestjs-gis';
import { CreateUserBiodataLogsDto } from './dto/CreateUserBiodataLogs.dto';
import { UpdateUserBiodataLogsDto } from './dto/UpdateUserBiodataLogs.dto';

@RouteMetadata()
@Crud({
  model: { type: UserBiodataLogsEntity },
  params: {},
  dto: {
    create: CreateUserBiodataLogsDto,
    update: UpdateUserBiodataLogsDto,
  },
})
@Controller('rest/UserBiodataLogs')
export class UserBiodataLogsController {
  constructor(private service: UserBiodataLogsService) {}
}
