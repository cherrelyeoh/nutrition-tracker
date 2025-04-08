import { Body, Controller, Post } from '@nestjs/common';
import { Crud, CrudController } from '@dataui/crud';
import { UserBiodataService } from './UserBiodata.service';
import { UserBiodataEntity } from './UserBiodata.entity';
import { RouteMetadata } from 'nestjs-gis';
import { CreateUserBiodataDto } from './dto/CreateUserBiodata.dto';
import { UpdateUserBiodataDto } from './dto/UpdateUserBiodata.dto';

@RouteMetadata()
@Crud({
  model: { type: UserBiodataEntity },
  dto: {
    create: CreateUserBiodataDto,
    update: UpdateUserBiodataDto,
  },
  params: {
    id: {
      field: 'id',
      type: 'number',
      primary: true,
    },
  },
  query: {
    alwaysPaginate: true,
    limit: 10,
    maxLimit: 100,
    join: {
      user: {
        eager: true,
      },
    },
  },
  // params: {},
})
@Controller('rest/UserBiodata')
export class UserBiodataController
  implements CrudController<UserBiodataEntity>
{
  constructor(public service: UserBiodataService) {}

  // @Post()
  // async createOneBase(@Body() body: any) {
  //   console.log('Body:', body);
  //   return this.service.createOne(body);
  // }
}
