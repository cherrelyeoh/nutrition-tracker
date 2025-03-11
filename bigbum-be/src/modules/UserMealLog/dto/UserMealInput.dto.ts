import { ApiProperty, ApiPropertyOptional } from '@nestjs/swagger';

export class UserMealInputDto {
  @ApiProperty()
  userId: number;

  @ApiPropertyOptional()
  userMealId?: number;

  @ApiPropertyOptional()
  mealImage?: string;

  @ApiProperty()
  mealName: string;
}
