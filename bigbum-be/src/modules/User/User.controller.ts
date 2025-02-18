import { Controller } from '@nestjs/common';
import { Crud } from '@nestjsx/crud';
import { UserService } from './User.service';
import { UserEntity } from './User.entity';
import { RouteMetadata } from 'nestjs-gis'

@RouteMetadata()
@Crud({
    model:{type:UserEntity},
    params:{
    }
})
@Controller('rest/User')
export class UserController {

  constructor(private service: UserService) { }

}
