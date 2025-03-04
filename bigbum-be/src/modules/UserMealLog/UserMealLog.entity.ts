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

  @Column({ type: 'varchar', length: 255, nullable: true })
  mealImage?: string;

  @Column({ type: 'varchar', length: 255 })
  mealText: string;

  @Column({ type: 'int' })
  mealLevel: number;

  @Column({ type: 'varchar', length: 255, nullable: true })
  remarks?: string;

  // Another table Response

  @Column({ type: 'text' })
  mealName: string;

  @Column({ type: 'int' })
  weight: number;

  @Column({ type: 'int' })
  calories: string;

  @Column({ type: 'int' })
  protein: string;

  @Column({ type: 'int' })
  fats: string;

  @Column({ type: 'int' })
  carbs: string;

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
