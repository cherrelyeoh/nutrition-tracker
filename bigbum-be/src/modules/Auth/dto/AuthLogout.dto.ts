import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty, IsString } from 'class-validator';

export class AuthLogoutDto {
  @ApiProperty({
    example: 'refreshToken.jwt.string',
    description: 'Refresh token to revoke',
  })
  @IsString()
  @IsNotEmpty()
  refreshToken: string;
}
