import { PartialType } from '@nestjs/mapped-types';
import { CreateUserBiodataLogsDto } from './CreateUserBiodataLogs.dto';

export class UpdateUserBiodataLogsDto extends PartialType(
  CreateUserBiodataLogsDto,
) {}
