import {
  Column,
  CreateDateColumn,
  DeleteDateColumn,
  Entity,
  JoinColumn,
  OneToOne,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
} from 'typeorm';
import { UserEntity } from '../User/User.entity';
import { MainMacro } from './UserIntakeTarget.constants';

@Entity('UserIntakeTarget')
export class UserIntakeTargetEntity {
  @PrimaryGeneratedColumn()
  id: number;

  @OneToOne(() => UserEntity)
  @JoinColumn({ name: 'userId' })
  user: UserEntity;

  @Column({ type: 'float' })
  calorie: number;

  @Column({ type: 'float' })
  fats: number;

  @Column({ type: 'float' })
  carbs: number;

  @Column({ type: 'float' })
  protein: number;

  @Column({ type: 'enum', enum: MainMacro })
  mainMacro: MainMacro;

  //Extended Macros
  //   @Column({ type: 'float' })
  //   fiber: number;

  //   @Column({ type: 'float' })
  //   sugars: number;

  //   @Column({ type: 'float' })
  //   saturatedFat: number;

  //   @Column({ type: 'float' })
  //   transFat: number;

  @Column({ type: 'varchar', length: 255 })
  createdBy: string;

  @CreateDateColumn({ type: 'timestamp' })
  creationDate: Date;

  @UpdateDateColumn({ type: 'timestamp' })
  lastUpdatedDate: Date;

  @DeleteDateColumn({ type: 'timestamp', nullable: true })
  deletedAt?: Date;
}
