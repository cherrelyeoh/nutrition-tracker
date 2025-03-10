import { Controller } from '@nestjs/common';
import { Crud } from '@nestjsx/crud';
import { UserMealQuestionsService } from './UserMealQuestions.service';
import { UserMealQuestionsEntity } from './UserMealQuestions.entity';
import { RouteMetadata } from 'nestjs-gis'

@RouteMetadata()
@Crud({
    model:{type:UserMealQuestionsEntity},
    params:{
    }
})
@Controller('rest/UserMealQuestions')
export class UserMealQuestionsController {

  constructor(private service: UserMealQuestionsService) { }

}
