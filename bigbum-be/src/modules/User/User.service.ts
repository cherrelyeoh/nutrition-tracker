import { TypeOrmCrudService } from '@dataui/crud-typeorm';
import {
  Injectable,
  ConflictException,
  NotFoundException,
  UnauthorizedException,
} from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { UserEntity } from './User.entity';
import { Repository } from 'typeorm';
import * as bcrypt from 'bcrypt';

@Injectable()
export class UserService extends TypeOrmCrudService<UserEntity> {
  constructor(
    @InjectRepository(UserEntity)
    private readonly userRepository: Repository<UserEntity>,
  ) {
    super(userRepository);
  }

  async signUp(userData: Partial<UserEntity>): Promise<UserEntity> {
    // Check if email or mobile already exists
    const existingUser = await this.userRepository.findOne({
      where: [
        { emailAddress: userData.emailAddress },
        { mobileNumber: userData.mobileNumber },
      ],
    });

    if (existingUser) {
      throw new ConflictException('Email or mobile number already in use');
    }

    // Hash password
    const hashedPassword = await bcrypt.hash(userData.password, 10);

    // Create new user
    const newUser = this.userRepository.create({
      ...userData,
      password: hashedPassword,
      accountStatus: 1, // Active status
      createdBy: 'system',
      lastUpdatedBy: 'system',
    });

    return await this.userRepository.save(newUser);
  }

  async validateUser(email: string, password: string): Promise<UserEntity> {
    const user = await this.userRepository.findOne({
      where: { emailAddress: email },
    });

    if (!user) {
      throw new NotFoundException('User not found');
    }

    // const isPasswordValid = await bcrypt.compare(password, user.password);
    // if (!isPasswordValid) {
    //   throw new UnauthorizedException('Invalid credentials');
    // }

    return user;
  }
}
