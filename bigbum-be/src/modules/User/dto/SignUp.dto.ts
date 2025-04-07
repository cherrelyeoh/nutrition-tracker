// auth.dto.ts
import {
  IsEmail,
  IsNotEmpty,
  IsString,
  MinLength,
  IsMobilePhone,
} from 'class-validator';

export class SignUpDto {
  @IsString()
  @IsNotEmpty()
  name: string;

  @IsEmail()
  @IsNotEmpty()
  emailAddress: string;

  @IsString()
  @IsMobilePhone() // Validate mobile number format
  @IsNotEmpty()
  mobileNumber: string;

  @IsString()
  @MinLength(8)
  @IsNotEmpty()
  password: string;
}
