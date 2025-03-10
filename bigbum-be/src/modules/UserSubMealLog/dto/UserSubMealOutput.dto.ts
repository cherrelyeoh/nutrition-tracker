import { ApiProperty } from '@nestjs/swagger';
import { UserMealLogEntity } from 'src/modules/UserMealLog/UserMealLog.entity';

export class UserSubMealOutput {
  @ApiProperty()
  id: number;

  @ApiProperty()
  mealName: string;

  @ApiProperty()
  weight: number;

  @ApiProperty()
  calories: number;

  @ApiProperty()
  protein: number;

  @ApiProperty()
  fats: number;

  @ApiProperty()
  carbs: number;

  @ApiProperty()
  mainMeal?: UserMealLogEntity;
}
