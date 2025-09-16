// dto/auth-logout-response.dto.ts
import { ApiProperty } from '@nestjs/swagger';

export class AuthLogoutResponseDto {
  @ApiProperty({
    example: 'Logged out successfully',
    description: 'Logout status message',
  })
  message: string;
}
