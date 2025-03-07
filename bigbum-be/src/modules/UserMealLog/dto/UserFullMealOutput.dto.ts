import { ApiProperty } from '@nestjs/swagger';
import { UserMealOutputDto } from './UserMealOutput.dto';
import { UserSubMealOutput } from 'src/modules/UserSubMealLog/dto/UserSubMealOutput.dto';

export class UserFullMealOutput {
  @ApiProperty()
  mainMeal: UserMealOutputDto;
  @ApiProperty()
  subMealList: UserSubMealOutput[];
}
