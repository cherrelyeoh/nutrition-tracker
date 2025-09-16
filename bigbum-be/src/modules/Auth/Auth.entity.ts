import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  ManyToOne,
  CreateDateColumn,
  UpdateDateColumn,
} from 'typeorm';
import { UserEntity } from '../User/User.entity';

@Entity('Auth')
export class AuthEntity {
  @PrimaryGeneratedColumn()
  id: number;

  // Hashed refresh token
  @Column({ type: 'varchar', length: 500 })
  refreshToken: string;

  @ManyToOne(() => UserEntity, (user) => user.id, { onDelete: 'CASCADE' })
  user: UserEntity;

  // Device info  (multi device logins)
  @Column({ type: 'varchar', length: 255, nullable: true })
  deviceInfo?: string;

  @Column({ type: 'timestamp', nullable: true })
  expiresAt?: Date;

  @CreateDateColumn({ type: 'timestamp' })
  createdAt: Date;

  @UpdateDateColumn({ type: 'timestamp' })
  updatedAt: Date;
}
