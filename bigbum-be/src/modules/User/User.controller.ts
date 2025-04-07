import {
  Controller,
  Post,
  Body,
  UsePipes,
  ValidationPipe,
} from '@nestjs/common';
import { Crud, CrudController } from '@nestjsx/crud';
import { UserEntity } from './user.entity';
import { RouteMetadata } from 'nestjs-gis';
import { ApiTags, ApiResponse, ApiOperation } from '@nestjs/swagger';
import { SignUpDto } from './dto/SignUp.dto';
import { LoginDto } from './dto/Login.dto';
import { UserService } from './User.service';
@RouteMetadata()
@Crud({
  model: { type: UserEntity },
  params: {},
})
@ApiTags('Authentication')
@Controller('rest/User')
export class UserController implements CrudController<UserEntity> {
  constructor(public readonly service: UserService) {}

  @Post('signup')
  @UsePipes(new ValidationPipe({ transform: true }))
  @ApiOperation({ summary: 'Register a new user' })
  @ApiResponse({
    status: 201,
    description: 'User successfully registered',
    type: UserEntity,
  })
  @ApiResponse({
    status: 409,
    description: 'Email or mobile already in use',
  })
  async signUp(@Body() signUpDto: SignUpDto): Promise<UserEntity> {
    return this.service.signUp(signUpDto);
  }

  @Post('login')
  @UsePipes(new ValidationPipe({ transform: true }))
  @ApiOperation({ summary: 'Authenticate user' })
  @ApiResponse({
    status: 200,
    description: 'Login successful',
    schema: {
      type: 'object',
      properties: {
        user: { $ref: '#/components/schemas/UserEntity' },
      },
    },
  })
  @ApiResponse({ status: 401, description: 'Invalid credentials' })
  @ApiResponse({ status: 404, description: 'User not found' })
  async login(@Body() loginDto: LoginDto): Promise<{ user: UserEntity }> {
    const user = await this.service.validateUser(
      loginDto.emailAddress,
      loginDto.password,
    );
    return { user };
  }
}
