import { Controller } from '@nestjs/common';
import { Crud } from '@nestjsx/crud';
import { UserBiodataService } from './UserBiodata.service';
import { UserBiodataEntity } from './UserBiodata.entity';
import { RouteMetadata } from 'nestjs-gis';

@RouteMetadata()
@Crud({
  model: { type: UserBiodataEntity },
  params: {},
})
@Controller('rest/UserBiodata')
export class UserBiodataController {
  constructor(private service: UserBiodataService) {}
}
