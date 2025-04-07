// auth.dto.ts
import { ApiProperty } from '@nestjs/swagger';
import {
  IsEmail,
  IsNotEmpty,
  IsString,
  MinLength,
  IsMobilePhone,
} from 'class-validator';

export class SignUpDto {
  @ApiProperty({
    example: 'John Doe',
    description: 'Full name of the user',
    required: true,
  })
  @IsString()
  @IsNotEmpty()
  name: string;

  @ApiProperty({
    example: 'john@example.com',
    description: 'Valid email address',
    required: true,
  })
  @IsEmail()
  @IsNotEmpty()
  emailAddress: string;

  @ApiProperty({
    example: '+1234567890',
    description: 'Phone number in international format',
    required: true,
  })
  @IsString()
  @IsMobilePhone()
  @IsNotEmpty()
  mobileNumber: string;

  @ApiProperty({
    example: 'securePassword123',
    description: 'Password with minimum 8 characters',
    minLength: 8,
    required: true,
  })
  @IsString()
  @MinLength(8)
  @IsNotEmpty()
  password: string;
}
