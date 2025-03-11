import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserMealQuestionsController } from './UserMealQuestions.controller';
import { UserMealQuestionsEntity } from './UserMealQuestions.entity';
import { UserMealQuestionsService } from './UserMealQuestions.service';

@Module({
  imports: [TypeOrmModule.forFeature([UserMealQuestionsEntity])],
  providers: [UserMealQuestionsService],
  controllers: [UserMealQuestionsController],
  exports: [UserMealQuestionsService],
})
export class UserMealQuestionsModule {}
