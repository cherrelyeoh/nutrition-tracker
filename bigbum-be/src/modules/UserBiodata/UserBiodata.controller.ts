import { Body, Controller, Post } from '@nestjs/common';
import { Crud, CrudController } from '@dataui/crud';
import { UserBiodataService } from './UserBiodata.service';
import { UserBiodataEntity } from './UserBiodata.entity';
import { RouteMetadata } from 'nestjs-gis';
import { CreateUserBiodataDto } from './dto/CreateUserBiodata.dto';
import { UpdateUserBiodataDto } from './dto/UpdateUserBiodata.dto';
import { ApiBody } from '@nestjs/swagger';
import { MealResultResponse } from '../UserMealLog/dto/MealResultResponse.dto';
import { MealQuestionResponse } from '../UserMealQuestions/dto/MealQuestionResponse.dto';
import { ExtractBiodataInputDto } from './dto/ExtractUserBiodataInput.dto';
import { ExtractBiodataOutputDto } from './dto/ExtractUserBiodataOutput.dto';

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

  @Post('extractUserBiodata')
  // @ApiBody({
  //   schema: {
  //     type: 'object',
  //     properties: {
  //       userId: { type: 'number', description: 'ID of the user' },
  //       mealImage: { type: 'string', description: 'Base64-encoded meal image' },
  //       mealName: { type: 'string', description: 'Name of the meal' },
  //     },
  //   },
  // })
  async extractUserBiodata(
    @Body() biodataInput: ExtractBiodataInputDto,
  ): Promise<ExtractBiodataOutputDto> {
    return await this.service.extractUserBiodata(biodataInput);
  }
}
