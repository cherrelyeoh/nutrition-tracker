import {
  Column,
  CreateDateColumn,
  DeleteDateColumn,
  Entity,
  JoinColumn,
  ManyToOne,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
} from 'typeorm';
import { UserMealLogEntity } from '../UserMealLog/UserMealLog.entity';
import { UserEntity } from '../User/User.entity';
import { ApiProperty } from '@nestjs/swagger';

@Entity('UserSubMealLog')
export class UserSubMealLogEntity {
  @PrimaryGeneratedColumn()
  @ApiProperty()
  id: number;

  @Column({ type: 'text' })
  @ApiProperty()
  mealName: string;

  @Column({ type: 'int' })
  @ApiProperty()
  weight: number;

  @Column({ type: 'int' })
  @ApiProperty()
  calories: number;

  @Column({ type: 'int' })
  @ApiProperty()
  protein: number;

  @Column({ type: 'int' })
  @ApiProperty()
  fats: number;

  @Column({ type: 'int' })
  @ApiProperty()
  carbs: number;

  @ManyToOne(() => UserMealLogEntity, { nullable: true })
  @JoinColumn({ name: 'mainMeal' })
  @ApiProperty({ type: () => UserMealLogEntity, required: false })
  mainMeal: UserMealLogEntity;

  @ManyToOne(() => UserEntity)
  @JoinColumn({ name: 'createdBy' })
  @ApiProperty({ type: () => UserEntity })
  createdBy: UserEntity;

  @CreateDateColumn({ type: 'timestamp' })
  @ApiProperty({ type: String, format: 'date-time' })
  createdDate: Date;

  @UpdateDateColumn({ type: 'timestamp' })
  @ApiProperty({ type: String, format: 'date-time' })
  lastUpdatedDate: Date;

  @DeleteDateColumn({ type: 'timestamp', nullable: true })
  @ApiProperty({ type: String, format: 'date-time', required: false })
  deletedAt?: Date;
}
