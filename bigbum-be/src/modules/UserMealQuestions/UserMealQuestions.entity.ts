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
import { UserMealLogEntity } from '../UserMealLog/UserMealLog.entity';

@Entity('UserMealQuestions')
export class UserMealQuestionsEntity {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ type: 'text', nullable: false })
  question: string;

  @Column({ type: 'jsonb', nullable: false })
  options: string[]; // JSON array of options

  @Column({ type: 'text', nullable: true })
  answer: string[];

  @ManyToOne(() => UserMealLogEntity)
  @JoinColumn({ name: 'createdBy' })
  userMealLog: UserMealLogEntity;

  @CreateDateColumn({ type: 'timestamp' })
  createdDate: Date;

  @UpdateDateColumn({ type: 'timestamp' })
  lastUpdatedDate: Date;

  @DeleteDateColumn({ type: 'timestamp', nullable: true })
  deletedAt?: Date;
}
