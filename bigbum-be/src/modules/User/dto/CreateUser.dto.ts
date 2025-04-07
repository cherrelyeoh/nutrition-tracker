import { ApiProperty } from '@nestjs/swagger';
import {
  IsEmail,
  IsInt,
  IsNotEmpty,
  IsOptional,
  IsString,
} from 'class-validator';

export class CreateUserDto {
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

  @ApiProperty({ example: 'SecurePass123!' })
  @IsString()
  @IsNotEmpty()
  password: string;

  @ApiProperty({ example: 'reset1234', required: false })
  @IsOptional()
  @IsString()
  passwordResetCode?: string;

  @ApiProperty({ example: 1 })
  @IsInt()
  accountStatus: number;

  @ApiProperty({ example: 'admin' })
  @IsString()
  createdBy: string;

  @ApiProperty({ example: 'admin' })
  @IsString()
  lastUpdatedBy: string;

  @ApiProperty({ example: 2, required: false })
  @IsOptional()
  @IsInt()
  subscriptionId?: number;
}
