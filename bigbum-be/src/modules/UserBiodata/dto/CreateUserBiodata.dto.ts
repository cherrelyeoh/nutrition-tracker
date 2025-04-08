import { ApiProperty } from '@nestjs/swagger';
import { IsInt, IsNumber, IsString } from 'class-validator';

export class CreateUserBiodataDto {
  @ApiProperty({ example: 1 })
  @IsInt()
  userId: number;

  @ApiProperty({ example: 23 })
  @IsInt()
  age: number;

  @ApiProperty({ example: 50 })
  @IsInt()
  weight: number;

  @ApiProperty({ example: 190 })
  @IsInt()
  height: number;

  @ApiProperty({ example: 16.7 })
  @IsNumber()
  bmi: number;

  @ApiProperty({ example: 16.7 })
  @IsNumber()
  bodyFat: number;

  @ApiProperty({ example: 16.7 })
  @IsNumber()
  muscleMass: number;

  @ApiProperty({ example: 1 })
  @IsInt()
  goal: number;

  @ApiProperty({ example: 2 })
  @IsInt()
  physicalActivity: number;

  @ApiProperty({ example: 'system' })
  @IsString()
  createdBy: string;
}
