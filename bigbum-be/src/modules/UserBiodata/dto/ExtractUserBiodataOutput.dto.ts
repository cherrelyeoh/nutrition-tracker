import { ApiProperty } from '@nestjs/swagger';
import { IsInt } from 'class-validator';

export class ExtractBiodataOutputDto {
  @ApiProperty()
  calories: number;
  @ApiProperty()
  protein: number;
  @ApiProperty()
  fats: number;
  @ApiProperty()
  carbs: number;
  @ApiProperty()
  mainMacro: string;

  @ApiProperty()
  age: number;
  @ApiProperty()
  weight: number;
  @ApiProperty()
  height: number;
  @ApiProperty()
  bmi: number;
  @ApiProperty()
  bodyFat: number;
  @ApiProperty()
  muscleMass: number;
  @ApiProperty()
  goal: number;
  @ApiProperty()
  physicalActivity: number;
}
