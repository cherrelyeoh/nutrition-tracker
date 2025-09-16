import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AuthController } from './Auth.controller';
import { AuthEntity } from './Auth.entity';
import { AuthService } from './Auth.service';
import { UserEntity } from '../User/User.entity';
import { JwtModule } from '@nestjs/jwt';

@Module({
  imports: [
    TypeOrmModule.forFeature([AuthEntity, UserEntity]),
    JwtModule.register({}),
  ],
  providers: [AuthService],
  controllers: [AuthController],
  exports: [AuthService],
})
export class AuthModule {}
