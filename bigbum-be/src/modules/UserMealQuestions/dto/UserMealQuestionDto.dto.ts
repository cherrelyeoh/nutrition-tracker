import { Expose } from 'class-transformer';

export class UserMealQuestionDto {
  @Expose()
  id: number;

  @Expose()
  question: string;

  @Expose()
  options: string[];

  @Expose()
  answer: string;

  @Expose()
  createdDate: Date;

  @Expose()
  lastUpdatedDate: Date;
}
