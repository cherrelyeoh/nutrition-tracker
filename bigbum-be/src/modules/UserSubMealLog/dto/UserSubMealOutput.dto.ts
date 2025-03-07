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
  calories: string;

  @ApiProperty()
  protein: string;

  @ApiProperty()
  fats: string;

  @ApiProperty()
  carbs: string;

  @ApiProperty()
  mainMeal?: UserMealLogEntity;
}
