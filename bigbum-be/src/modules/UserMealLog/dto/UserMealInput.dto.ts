import { ApiProperty } from '@nestjs/swagger';

export class UserMealInputDto {
  @ApiProperty()
  userId: number;
  @ApiProperty()
  mealImage: string;
  @ApiProperty()
  mealName: string;
}
