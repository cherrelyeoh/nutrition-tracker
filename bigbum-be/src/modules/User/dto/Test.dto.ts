import { ApiProperty } from '@nestjs/swagger';
import { IsOptional, IsString } from 'class-validator';

export class TestDto {
  @ApiProperty({ required: false })
  @IsOptional()
  bio?: string;
}
