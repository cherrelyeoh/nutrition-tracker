import { PartialType } from '@nestjs/mapped-types';
import { CreateUserSubMealLogDto } from './CreateUserSubMealLog.dto';

export class UpdateUserSubMealLogDto extends PartialType(
  CreateUserSubMealLogDto,
) {}
