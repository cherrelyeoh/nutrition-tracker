import { PartialType } from '@nestjs/mapped-types';
import { CreateUserBiodataDto } from './CreateUserBiodata.dto';

export class UpdateUserBiodataDto extends PartialType(CreateUserBiodataDto) {}
