import { Controller } from '@nestjs/common';
import { Crud } from '@dataui/crud';
import { UserIntakeTargetService } from './UserIntakeTarget.service';
import { UserIntakeTargetEntity } from './UserIntakeTarget.entity';
import { RouteMetadata, GISCrud } from 'nestjs-gis';

@RouteMetadata()
@GISCrud()
@Crud({
  model: { type: UserIntakeTargetEntity },
  params: {},
})
@Controller('rest/UserIntakeTarget')
export class UserIntakeTargetController {
  constructor(private service: UserIntakeTargetService) {}
}
