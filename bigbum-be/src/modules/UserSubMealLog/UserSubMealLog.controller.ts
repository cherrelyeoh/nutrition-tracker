import { Controller } from '@nestjs/common';
import { Crud } from '@dataui/crud';
import { UserSubMealLogService } from './UserSubMealLog.service';
import { UserSubMealLogEntity } from './UserSubMealLog.entity';
import { RouteMetadata } from 'nestjs-gis';

@RouteMetadata()
@Crud({
  model: { type: UserSubMealLogEntity },
  params: {},
})
@Controller('rest/UserSubMealLog')
export class UserSubMealLogController {
  constructor(private service: UserSubMealLogService) {}
}
