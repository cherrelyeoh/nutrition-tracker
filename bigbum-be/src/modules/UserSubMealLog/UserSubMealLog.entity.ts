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
  @ApiProperty({ required: false, nullable: true })
  id: number;

  @Column({ type: 'text', nullable: true })
  @ApiProperty({ required: false, nullable: true })
  mealName?: string;

  @Column({ type: 'int', nullable: true })
  @ApiProperty({ required: false, nullable: true })
  weight?: number;

  @Column({ type: 'int', nullable: true })
  @ApiProperty({ required: false, nullable: true })
  calories?: number;

  @Column({ type: 'int', nullable: true })
  @ApiProperty({ required: false, nullable: true })
  protein?: number;

  @Column({ type: 'int', nullable: true })
  @ApiProperty({ required: false, nullable: true })
  fats?: number;

  @Column({ type: 'int', nullable: true })
  @ApiProperty({ required: false, nullable: true })
  carbs?: number;

  @ManyToOne(() => UserMealLogEntity, { nullable: true })
  @JoinColumn({ name: 'mainMeal' })
  @ApiProperty({
    type: () => UserMealLogEntity,
    required: false,
    nullable: true,
  })
  mainMeal?: UserMealLogEntity;

  @ManyToOne(() => UserEntity, { nullable: true })
  @JoinColumn({ name: 'createdBy' })
  @ApiProperty({ type: () => UserEntity, required: false, nullable: true })
  createdBy?: UserEntity;

  @CreateDateColumn({ type: 'timestamp' })
  @ApiProperty({
    type: String,
    format: 'date-time',
    required: false,
    nullable: true,
  })
  createdDate?: Date;

  @UpdateDateColumn({ type: 'timestamp' })
  @ApiProperty({
    type: String,
    format: 'date-time',
    required: false,
    nullable: true,
  })
  lastUpdatedDate?: Date;

  @DeleteDateColumn({ type: 'timestamp', nullable: true })
  @ApiProperty({
    type: String,
    format: 'date-time',
    required: false,
    nullable: true,
  })
  deletedAt?: Date;
}
