import {
  Controller,
  Post,
  Body,
  UsePipes,
  ValidationPipe,
} from '@nestjs/common';
import { Crud, CrudController } from '@dataui/crud';
import { UserEntity } from './user.entity';
import { RouteMetadata } from 'nestjs-gis';
import {
  ApiTags,
  ApiResponse,
  ApiOperation,
  ApiOkResponse,
} from '@nestjs/swagger';
import { SignUpDto } from './dto/SignUp.dto';
import { LoginDto } from './dto/Login.dto';
import { UserService } from './User.service';
import { CreateUserDto } from './dto/CreateUser.dto';
import { UpdateUserDto } from './dto/UpdateUser.dto';
@RouteMetadata()
@Crud({
  model: { type: UserEntity },
  dto: {
    create: CreateUserDto,
    update: UpdateUserDto,
  },
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
  @ApiOkResponse({
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
