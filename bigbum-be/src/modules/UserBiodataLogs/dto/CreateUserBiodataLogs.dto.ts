import { IsInt, IsNumber, IsString, IsNotEmpty } from 'class-validator';

export class CreateUserBiodataLogsDto {
  @IsInt()
  userId: number;

  @IsInt()
  age: number;

  @IsNumber()
  weight: number;

  @IsNumber()
  height: number;

  @IsNumber()
  bodyFat: number;

  @IsNumber()
  muscleMass: number;

  @IsNumber()
  bmi: number;

  @IsString()
  @IsNotEmpty()
  createdBy: string;
}
