import { Body, Controller, Get, Param, Post, Query } from '@nestjs/common';
import { Crud } from '@dataui/crud';
import { UserMealLogService } from './UserMealLog.service';
import { UserMealLogEntity } from './UserMealLog.entity';
import { RouteMetadata } from 'nestjs-gis';
import { MealQuestionResponse } from '../UserMealQuestions/dto/MealQuestionResponse.dto';
import { MealResultResponse } from './dto/MealResultResponse.dto';
import { UserMealInputDto } from './dto/UserMealInput.dto';
import { ApiBody, ApiOkResponse, ApiResponse } from '@nestjs/swagger';

@RouteMetadata()
@Crud({
  model: { type: UserMealLogEntity },
  params: {},
})
@Controller('rest/UserMealLog')
export class UserMealLogController {
  constructor(private service: UserMealLogService) {}

  // async extractNutrientDetails(
  //   userMealInput: UserMealInputDto,
  // ): Promise<MealQuestionResponse | MealResultResponse> {
  //   return await this.service.extractNutrientData(userMealInput);
  // }

  @Post('extractNutrientDetails')
  @ApiBody({ type: UserMealInputDto })
  @ApiOkResponse({
    description: 'Successfully extracted nutrient details',
    content: {
      'application/json': {
        schema: {
          oneOf: [
            { $ref: '#/components/schemas/MealQuestionResponse' },
            { $ref: '#/components/schemas/MealResultResponse' },
          ],
        },
      },
    },
  })
  @ApiResponse({ status: 400, description: 'Bad Request' })
  @ApiResponse({ status: 500, description: 'Internal Server Error' })
  async extractNutrientDetails(
    @Body() userMealInput: UserMealInputDto,
  ): Promise<MealQuestionResponse | MealResultResponse> {
    return await this.service.extractNutrientData(userMealInput);
  }

  @Get('mealsByUser/:userId')
  async getUserMeals(
    @Param('userId') userId: number,
    @Query('startDate') startDate: string,
    @Query('endDate') endDate: string,
  ) {
    return this.service.getByUserAndDateRange(
      Number(userId),
      new Date(startDate),
      new Date(endDate),
    );
  }
}
