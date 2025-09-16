import { TypeOrmCrudService } from '@nestjsx/crud-typeorm';
import {
  ForbiddenException,
  Injectable,
  UnauthorizedException,
} from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { AuthEntity } from './Auth.entity';
import { JwtService } from '@nestjs/jwt';
import { UserEntity } from '../User/User.entity';
import { Repository } from 'typeorm';
import * as bcrypt from 'bcrypt';

@Injectable()
export class AuthService extends TypeOrmCrudService<AuthEntity> {
  constructor(
    @InjectRepository(AuthEntity) repo,

    private jwtService: JwtService,

    @InjectRepository(UserEntity)
    private usersRepo: Repository<UserEntity>,

    @InjectRepository(AuthEntity)
    private authRepo: Repository<AuthEntity>,
  ) {
    super(repo);
  }
  private async generateTokens(user: UserEntity) {
    const payload = { sub: user.id, email: user.emailAddress };

    const accessToken = await this.jwtService.signAsync(payload, {
      secret: process.env.JWT_ACCESS_SECRET,
      expiresIn: '15m',
    });

    const refreshToken = await this.jwtService.signAsync(payload, {
      secret: process.env.JWT_REFRESH_SECRET,
      expiresIn: '7d',
    });

    return { accessToken, refreshToken };
  }

  async login(email: string, password: string, deviceInfo?: any) {
    const user = await this.usersRepo.findOne({
      where: { emailAddress: email },
    });
    if (!user) throw new UnauthorizedException('Invalid credentials');

    const isMatch = password === user.password; // Replace with bcrypt.compare
    if (!isMatch) throw new UnauthorizedException('Invalid credentials');

    const { accessToken, refreshToken } = await this.generateTokens(user);

    const hashedRefresh = await bcrypt.hash(refreshToken, 10);
    const authRecord = this.authRepo.create({
      refreshToken: hashedRefresh,
      user,
      deviceInfo,
    });
    await this.authRepo.save(authRecord);

    return {
      accessToken,
      refreshToken,
      userId: user.id,
      emailAddress: user.emailAddress,
      username: user.name,
    };
  }

  async refresh(userId: number, refreshToken: string) {
    const authRecords = await this.authRepo.find({
      where: { user: { id: userId } },
      relations: ['user'],
    });

    if (!authRecords.length) throw new ForbiddenException('No active sessions');

    // find valid refresh token
    let validAuth: AuthEntity | null = null;
    for (const record of authRecords) {
      const isMatch = await bcrypt.compare(refreshToken, record.refreshToken);
      if (isMatch) {
        validAuth = record;
        break;
      }
    }
    if (!validAuth) throw new ForbiddenException('Invalid refresh token');

    const { accessToken, refreshToken: newRefresh } = await this.generateTokens(
      validAuth.user,
    );

    validAuth.refreshToken = await bcrypt.hash(newRefresh, 10);
    await this.authRepo.save(validAuth);

    return { accessToken, refreshToken: newRefresh };
  }

  async logout(userId: number, refreshToken: string) {
    const authRecords = await this.authRepo.find({
      where: { user: { id: userId } },
      relations: ['user'],
    });

    for (const record of authRecords) {
      const isMatch = await bcrypt.compare(refreshToken, record.refreshToken);
      if (isMatch) {
        await this.authRepo.remove(record);
        return { message: 'Logged out successfully' };
      }
    }

    throw new ForbiddenException('Refresh token not found');
  }
}
