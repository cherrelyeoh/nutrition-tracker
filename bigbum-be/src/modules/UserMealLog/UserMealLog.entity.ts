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
  @ApiProperty()
  id: number;

  // Request
  @Column({ type: 'varchar', length: 255, nullable: false })
  @ApiProperty()
  mealImage?: string;

  @Column({ type: 'varchar', length: 255, nullable: false })
  @ApiProperty()
  mealType: string;

  @Column({ type: 'boolean', default: false })
  @ApiProperty()
  isComplete: boolean;

  @Column({ type: 'timestamp', nullable: true })
  @ApiProperty({ type: String, format: 'date-time', required: false })
  dateOfMeal: Date;

  // Response
  @Column({ type: 'text', nullable: true })
  @ApiProperty({ required: false })
  mealName: string;

  @Column({ type: 'int', nullable: true })
  @ApiProperty({ required: false })
  weight: number;

  @Column({ type: 'int', nullable: true })
  @ApiProperty({ required: false })
  calories: number;

  @Column({ type: 'int', nullable: true })
  @ApiProperty({ required: false })
  protein: number;

  @Column({ type: 'int', nullable: true })
  @ApiProperty({ required: false })
  fats: number;

  @Column({ type: 'int', nullable: true })
  @ApiProperty({ required: false })
  carbs: number;

  @Column({ type: 'int', nullable: true })
  @ApiProperty({ required: false })
  mealLevel: number;

  @Column({ type: 'varchar', length: 255, nullable: true })
  @ApiProperty({ required: false })
  comments?: string;

  @ManyToOne(() => AIIntegrationLogsEntity, { nullable: true })
  @JoinColumn({ name: 'promptLog' })
  @ApiProperty({ type: () => AIIntegrationLogsEntity, required: false })
  promptLog: AIIntegrationLogsEntity;

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
