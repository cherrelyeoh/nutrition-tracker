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

@Entity('UserSubMealLog')
export class UserSubMealLogEntity {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ type: 'text' })
  mealName: string;

  @Column({ type: 'int' })
  weight: number;

  @Column({ type: 'int' })
  calories: number;

  @Column({ type: 'int' })
  protein: number;

  @Column({ type: 'int' })
  fats: number;

  @Column({ type: 'int' })
  carbs: number;

  @ManyToOne(() => UserMealLogEntity, { nullable: true })
  @JoinColumn({ name: 'mainMeal' })
  mainMeal: UserMealLogEntity;

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
