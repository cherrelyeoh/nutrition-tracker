import { Controller } from '@nestjs/common';
import { Crud } from '@dataui/crud';
import { UserSubMealLogService } from './UserSubMealLog.service';
import { UserSubMealLogEntity } from './UserSubMealLog.entity';
import { RouteMetadata } from 'nestjs-gis';
import { CreateUserSubMealLogDto } from './dto/CreateUserSubMealLog.dto';
import { UpdateUserSubMealLogDto } from './dto/UpdateUserSubMealLog.dto';

@RouteMetadata()
@Crud({
  model: { type: UserSubMealLogEntity },
  params: {},
  dto: {
    create: CreateUserSubMealLogDto,
    update: UpdateUserSubMealLogDto,
  },
})
@Controller('rest/UserSubMealLog')
export class UserSubMealLogController {
  constructor(private service: UserSubMealLogService) {}
}
