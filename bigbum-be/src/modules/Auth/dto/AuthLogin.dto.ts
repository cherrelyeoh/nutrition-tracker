import { ApiProperty } from '@nestjs/swagger';
import { IsEmail, IsNotEmpty, IsOptional, IsString } from 'class-validator';

export class AuthLoginDto {
  @ApiProperty({
    example: 'user@example.com',
    description: 'Registered email address',
    required: true,
    pattern: '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$',
  })
  @IsEmail()
  @IsNotEmpty()
  emailAddress: string;

  @ApiProperty({
    example: 'yourSecurePassword123',
    description: 'Account password',
    required: true,
    minLength: 8,
    format: 'password',
  })
  @IsString()
  @IsNotEmpty()
  password: string;

  @ApiProperty({
    example: 'Android 14 - Samsung S23 Ultra',
    description: 'Device information (OS, model, app version, etc.)',
    required: false,
  })
  @IsString()
  @IsOptional()
  deviceInfo?: string;
}
