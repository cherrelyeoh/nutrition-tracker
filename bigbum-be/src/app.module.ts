import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { ConfigModule } from '@nestjs/config';
import { TypeOrmModule } from '@nestjs/typeorm';
import { config } from './config/datasource';
import { AIPromptModule } from './modules/AIPrompt/AIPrompt.module';
import { UserMealLogModule } from './modules/UserMealLog/UserMealLog.module';
import { AIIntegrationLogsModule } from './modules/AIIntegrationLogs/AIIntegrationLogs.module';
import { UserModule } from './modules/User/User.module';

@Module({
  imports: [
    ConfigModule.forRoot(),
    TypeOrmModule.forRoot(config),
    AIPromptModule,
    UserMealLogModule,
    AIIntegrationLogsModule,
    UserModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
