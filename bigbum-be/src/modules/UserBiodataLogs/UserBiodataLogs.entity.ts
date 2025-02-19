import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  CreateDateColumn,
  OneToOne,
  JoinColumn,
  UpdateDateColumn,
  DeleteDateColumn,
} from 'typeorm';
import { UserBiodataEntity } from '../UserBiodata/UserBiodata.entity';

@Entity('UserBiodataLogs')
export class UserBiodataLogsEntity {
  @PrimaryGeneratedColumn()
  id: number;

  @OneToOne(() => UserBiodataEntity)
  @JoinColumn({ name: 'userBioDataId' })
  userBiodata: UserBiodataEntity;

  @Column({ type: 'int' })
  age: number;

  @Column({ type: 'float' })
  weight: number;

  @Column({ type: 'float' })
  height: number;

  @Column({ type: 'float' })
  bmi: number;

  @Column({ type: 'varchar', length: 255 })
  createdBy: string;

  @CreateDateColumn({ type: 'timestamp' })
  creationDate: Date;

  @UpdateDateColumn({ type: 'timestamp' })
  lastUpdatedDate: Date;

  @DeleteDateColumn({ type: 'timestamp', nullable: true })
  deletedAt?: Date;
}
