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

@Entity('UserMealLog')
export class UserMealLogEntity {
  @PrimaryGeneratedColumn()
  id: number;

  //Request
  @Column({ type: 'varchar', length: 255, nullable: false })
  mealImage?: string;

  @Column({ type: 'varchar', length: 255, nullable: false })
  mealType: string;

  @Column({ type: 'boolean', default: false })
  isComplete: boolean;

  @Column({ type: 'timestamp', nullable: true })
  dateOfMeal: Date; // This field is to cater for the future where we would allow multiple meals

  //Response

  @Column({ type: 'text', nullable: true })
  mealName: string;

  @Column({ type: 'int', nullable: true })
  weight: number;

  @Column({ type: 'int', nullable: true })
  calories: number;

  @Column({ type: 'int', nullable: true })
  protein: number;

  @Column({ type: 'int', nullable: true })
  fats: number;

  @Column({ type: 'int', nullable: true })
  carbs: number;

  @Column({ type: 'int', nullable: true })
  mealLevel: number;

  @Column({ type: 'varchar', length: 255, nullable: true })
  comments?: string;

  @ManyToOne(() => AIIntegrationLogsEntity, { nullable: true })
  @JoinColumn({ name: 'promptLog' })
  promptLog: AIIntegrationLogsEntity;

  @ManyToOne(() => UserEntity)
  @JoinColumn({ name: 'createdBy' })
  createdBy: UserEntity;

  @CreateDateColumn({ type: 'timestamp' })
  createdDate: Date;

  @UpdateDateColumn({ type: 'timestamp' })
  lastUpdatedDate: Date;

  @DeleteDateColumn({ type: 'timestamp', nullable: true })
  deletedAt?: Date;
}
