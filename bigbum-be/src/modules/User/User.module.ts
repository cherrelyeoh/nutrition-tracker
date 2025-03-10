import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserController } from './User.controller';
import { UserEntity } from './User.entity';
import { UserService } from './User.service';
import { UserMealQuestionsModule } from '.MealQuestions/UserMealQuestions.module';

@Module({
  imports: [UserMealQuestionsModule,
TypeOrmModule.forFeature([UserEntity])],
  providers: [UserService],
  controllers: [UserController],
  exports: [UserService],
})
export class UserModule {}
