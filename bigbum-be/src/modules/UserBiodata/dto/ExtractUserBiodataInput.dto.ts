import { ApiProperty } from '@nestjs/swagger';
import { IsInt } from 'class-validator';

export class ExtractBiodataInputDto {
  @ApiProperty()
  @IsInt()
  userId: number;

  @ApiProperty()
  bodyImageFront?: string;

  @ApiProperty()
  bodyImageSide?: string;

  @ApiProperty({ example: 170, description: 'Height in cm' })
  @IsInt()
  height: number;

  @ApiProperty({ example: 65, description: 'Weight in kg' })
  @IsInt()
  weight: number;

  @ApiProperty({ example: 25, description: 'Age in years' })
  @IsInt()
  age: number;

  @ApiProperty({
    example: 0,
    description: 'Goal: 0 = Weight Loss, 1 = Maintenance, 2 = Muscle Gain',
  })
  @IsInt()
  goal: number;

  @ApiProperty({
    example: 2,
    description:
      'Physical Activity Level: 0 = Sedentary, 1 = Lightly active, 2 = Moderately active, 3 = Very active, 4 = Extra active',
  })
  @IsInt()
  physicalActivity: number;
}
