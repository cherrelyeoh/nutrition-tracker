import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserController } from './User.controller';
import { UserEntity } from './User.entity';
import { UserService } from './User.service';
import { UserMealLogModule } from '.MealLog/UserMealLog.module';
import { AIPromptLogModule } from '.d:/ShinBryan/Documents/BigBum/Project/bigbum/bigbum-be/src/modules/AIPromptLog/AIPromptLog.module';
import { AIPromptModule } from '.d:/ShinBryan/Documents/BigBum/Project/bigbum/bigbum-be/src/modules/AIPrompt/AIPrompt.module';
import { AIIntegrationLogsModule } from '.d:/ShinBryan/Documents/BigBum/Project/bigbum/bigbum-be/src/modules/AIIntegrationLogs/AIIntegrationLogs.module';

@Module({
  imports: [AIIntegrationLogsModule,
AIPromptModule,
AIPromptLogModule,
UserMealLogModule,
TypeOrmModule.forFeature([UserEntity])],
  providers: [UserService],
  controllers: [UserController],
})
export class UserModule {}
