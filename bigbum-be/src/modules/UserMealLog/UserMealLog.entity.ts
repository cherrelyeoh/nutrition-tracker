import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  CreateDateColumn,
  UpdateDateColumn,
  DeleteDateColumn,
  ManyToOne,
  JoinColumn,
} from 'typeorm';
import { UserEntity } from '../User/User.entity';
import { AIIntegrationLogsEntity } from '../AIIntegrationLogs/AIIntegrationLogs.entity';
import { ApiProperty } from '@nestjs/swagger';

@Entity('UserMealLog')
export class UserMealLogEntity {
  @PrimaryGeneratedColumn()
  @ApiProperty({ required: false, nullable: true })
  id?: number;

  // Request
  @Column({ type: 'varchar', length: 255, nullable: true })
  @ApiProperty({ required: false, nullable: true })
  mealImage?: string;

  @Column({ type: 'varchar', length: 255, nullable: true })
  @ApiProperty({ required: false, nullable: true })
  mealType?: string;

  @Column({ type: 'boolean', default: false })
  @ApiProperty({ required: false, nullable: true })
  isComplete?: boolean;

  @Column({ type: 'timestamp', nullable: true })
  @ApiProperty({
    type: String,
    format: 'date-time',
    required: false,
    nullable: true,
  })
  dateOfMeal?: Date;

  // Response
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

  @Column({ type: 'int', nullable: true })
  @ApiProperty({ required: false, nullable: true })
  mealLevel?: number;

  @Column({ type: 'varchar', length: 255, nullable: true })
  @ApiProperty({ required: false, nullable: true })
  comments?: string;

  @ManyToOne(() => AIIntegrationLogsEntity, { nullable: true })
  @JoinColumn({ name: 'promptLog' })
  @ApiProperty({
    type: () => AIIntegrationLogsEntity,
    required: false,
    nullable: true,
  })
  promptLog?: AIIntegrationLogsEntity;

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
