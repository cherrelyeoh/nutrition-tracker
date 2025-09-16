// dto/auth-refresh-response.dto.ts
import { ApiProperty } from '@nestjs/swagger';

export class AuthRefreshResponseDto {
  @ApiProperty({
    example: 'new.jwt.access.token',
    description: 'New access token',
  })
  accessToken: string;

  @ApiProperty({
    example: 'new.jwt.refresh.token',
    description: 'New refresh token',
  })
  refreshToken: string;
}
