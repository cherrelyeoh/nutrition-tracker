import { Controller } from '@nestjs/common';
import { Crud } from '@dataui/crud';
import { UserMealQuestionsService } from './UserMealQuestions.service';
import { UserMealQuestionsEntity } from './UserMealQuestions.entity';
import { RouteMetadata } from 'nestjs-gis';
import { CreateUserMealQuestionDto } from './dto/CreateUserMealQuestion.dto';
import { UpdateUserMealQuestionDto } from './dto/UpdateUserMealQuestion.dto';

@RouteMetadata()
@Crud({
  model: { type: UserMealQuestionsEntity },
  params: {},
  dto: { create: CreateUserMealQuestionDto, update: UpdateUserMealQuestionDto },
})
@Controller('rest/UserMealQuestions')
export class UserMealQuestionsController {
  constructor(private service: UserMealQuestionsService) {}
}
