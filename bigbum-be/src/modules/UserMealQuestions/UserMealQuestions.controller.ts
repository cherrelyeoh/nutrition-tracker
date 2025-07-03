import { Body, Controller, Post, Put } from '@nestjs/common';
import { Crud } from '@dataui/crud';
import { UserMealQuestionsService } from './UserMealQuestions.service';
import { UserMealQuestionsEntity } from './UserMealQuestions.entity';
import { RouteMetadata } from 'nestjs-gis';
import { CreateUserMealQuestionDto } from './dto/CreateUserMealQuestion.dto';
import { UpdateUserMealQuestionDto } from './dto/UpdateUserMealQuestion.dto';
import { ApiBody } from '@nestjs/swagger';

@RouteMetadata()
@Crud({
  model: { type: UserMealQuestionsEntity },
  params: {},
  dto: { create: CreateUserMealQuestionDto, update: UpdateUserMealQuestionDto },
})
@Controller('rest/UserMealQuestions')
export class UserMealQuestionsController {
  constructor(private service: UserMealQuestionsService) {}

  @Post('bulk-update')
  @ApiBody({ type: [UpdateUserMealQuestionDto] })
  async bulkUpdate(
    @Body() updates: UpdateUserMealQuestionDto[],
  ): Promise<UserMealQuestionsEntity[]> {
    return await this.service.bulkUpdate(updates);
  }
}
