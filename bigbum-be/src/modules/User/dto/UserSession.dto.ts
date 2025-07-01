import { PartialType } from '@nestjs/mapped-types';
import { CreateUserDto } from './CreateUser.dto';
import { ApiProperty } from '@nestjs/swagger';
import {
  IsEmail,
  IsIn,
  IsInt,
  IsNotEmpty,
  IsOptional,
  IsString,
} from 'class-validator';

export class UserSessionDto {
  @ApiProperty()
  @IsInt()
  @IsNotEmpty()
  id: Number;

  @ApiProperty({ example: 'John Doe' })
  @IsString()
  @IsNotEmpty()
  name: string;

  @ApiProperty({ example: 'john@example.com' })
  @IsEmail()
  emailAddress: string;

  @ApiProperty({ example: '+1234567890' })
  @IsString()
  @IsNotEmpty()
  mobileNumber: string;

  @ApiProperty({ example: 1 })
  @IsInt()
  accountStatus: number;

  @ApiProperty({ example: 2, required: false })
  @IsOptional()
  @IsInt()
  subscriptionId?: number;
}

export class LoginResponseDto {
  @ApiProperty({ type: () => UserSessionDto })
  user: UserSessionDto;
}
