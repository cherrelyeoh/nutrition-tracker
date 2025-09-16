import { Body, Controller, Post } from '@nestjs/common';
import { Crud } from '@nestjsx/crud';
import { AuthService } from './Auth.service';
import { AuthEntity } from './Auth.entity';
import { RouteMetadata } from 'nestjs-gis';
import { JwtService } from '@nestjs/jwt';
import { AuthLoginDto } from './dto/AuthLogin.dto';
import { AuthLoginResponseDto } from './dto/AuthLoginResponse.dto';
import { AuthRefreshDto } from './dto/AuthRefresh.dto';
import { AuthRefreshResponseDto } from './dto/AuthRefreshResponse.dto';
import { AuthLogoutDto } from './dto/AuthLogout.dto';
import { AuthLogoutResponseDto } from './dto/AuthLogoutResponse.dto';
import { ApiBody } from '@nestjs/swagger';

@RouteMetadata()
@Crud({
  model: { type: AuthEntity },
  params: {},
})
@Controller('rest/Auth')
export class AuthController {
  constructor(
    private authService: AuthService,
    private jwtService: JwtService,
  ) {}

  @Post('login')
  @ApiBody({ type: AuthLoginDto })
  async login(
    @Body() authLoginDto: AuthLoginDto,
  ): Promise<AuthLoginResponseDto> {
    return this.authService.login(
      authLoginDto.emailAddress,
      authLoginDto.password,
      authLoginDto.deviceInfo,
    );
  }

  @Post('refresh')
  @ApiBody({ type: AuthRefreshDto })
  async refresh(@Body() dto: AuthRefreshDto): Promise<AuthRefreshResponseDto> {
    const payload = await this.jwtService.verifyAsync(dto.refreshToken, {
      secret: process.env.JWT_REFRESH_SECRET,
    });
    return this.authService.refresh(payload.sub, dto.refreshToken);
  }

  @Post('logout')
  @ApiBody({ type: AuthLogoutDto })
  async logout(@Body() dto: AuthLogoutDto): Promise<AuthLogoutResponseDto> {
    const payload = await this.jwtService.verifyAsync(dto.refreshToken, {
      secret: process.env.JWT_REFRESH_SECRET,
    });
    return this.authService.logout(payload.sub, dto.refreshToken);
  }
}
