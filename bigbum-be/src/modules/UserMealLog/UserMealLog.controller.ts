import { Controller } from '@nestjs/common';
import { Crud } from '@nestjsx/crud';
import { UserMealLogService } from './UserMealLog.service';
import { UserMealLogEntity } from './UserMealLog.entity';
import { RouteMetadata } from 'nestjs-gis';

@RouteMetadata()
@Crud({
  model: { type: UserMealLogEntity },
  params: {},
})
@Controller('rest/UserMealLog')
export class UserMealLogController {
  constructor(private service: UserMealLogService) {}
}
