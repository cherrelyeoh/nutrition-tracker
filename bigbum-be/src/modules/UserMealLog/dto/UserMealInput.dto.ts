import { ApiProperty, ApiPropertyOptional } from '@nestjs/swagger';

export class UserMealInputDto {
  @ApiProperty()
  userId: number;

  @ApiPropertyOptional()
  userMealId?: number;

  @ApiProperty()
  mealImage: string;

  @ApiProperty()
  mealName: string;
}
