// dto/auth-login-response.dto.ts
import { ApiProperty } from '@nestjs/swagger';

export class AuthLoginResponseDto {
  @ApiProperty({ example: 'jwt.access.token', description: 'Access token' })
  accessToken: string;

  @ApiProperty({ example: 'jwt.refresh.token', description: 'Refresh token' })
  refreshToken: string;

  @ApiProperty({ example: 1, description: 'User ID' })
  userId: number;

  @ApiProperty({
    example: 'user@example.com',
    description: 'User email address',
  })
  emailAddress: string;

  @ApiProperty({
    example: 'John Doe',
    description: 'User Username',
  })
  username: string;
}
