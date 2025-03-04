import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { ConfigModule } from '@nestjs/config';
import { TypeOrmModule } from '@nestjs/typeorm';
import { config } from './config/datasource';
import { AIPromptModule } from './modules/AIPrompt/AIPrompt.module';

@Module({
  imports: [
    ConfigModule.forRoot(),
    TypeOrmModule.forRoot(config),
    AIPromptModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
