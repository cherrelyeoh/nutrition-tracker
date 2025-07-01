import { Controller, Get, Param } from '@nestjs/common';
import { Crud } from '@dataui/crud';
import { UserSubMealLogService } from './UserSubMealLog.service';
import { UserSubMealLogEntity } from './UserSubMealLog.entity';
import { RouteMetadata } from 'nestjs-gis';
import { CreateUserSubMealLogDto } from './dto/CreateUserSubMealLog.dto';
import { UpdateUserSubMealLogDto } from './dto/UpdateUserSubMealLog.dto';
import { ApiBody, ApiOkResponse } from '@nestjs/swagger';

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
  @ApiOkResponse({
    description: 'Retrieve Data Success',
    type: [UserSubMealLogEntity],
  })
  @Get('main-meal/:id')
  async getByMainMealId(
    @Param('id') id: number,
  ): Promise<UserSubMealLogEntity[]> {
    return await this.service.findByMainMealId(id);
  }
}
