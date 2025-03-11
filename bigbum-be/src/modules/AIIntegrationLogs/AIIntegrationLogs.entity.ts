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
import { AIPromptEntity } from '../AIPrompt/AIPrompt.entity';

@Entity('AIIntegrationLogs')
export class AIIntegrationLogsEntity {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ type: 'varchar', length: 255 })
  actionUrl: string;

  @Column({ type: 'text' })
  request: string;

  @Column({ type: 'text' })
  response: string;

  @Column({ type: 'text' })
  responseType: string;

  @ManyToOne(() => AIPromptEntity)
  @JoinColumn({ name: 'promptType' })
  promptType: AIPromptEntity;

  @Column({ type: 'int', nullable: true })
  requestDuration: number;

  @Column({ type: 'int' })
  promptToken: number;

  @Column({ type: 'float', default: 0 })
  cost: number;

  @ManyToOne(() => UserEntity, { nullable: true })
  @JoinColumn({ name: 'createdBy' })
  createdBy: UserEntity;

  @CreateDateColumn({ type: 'timestamp' })
  createdDate: Date;

  @UpdateDateColumn({ type: 'timestamp' })
  lastUpdatedDate: Date;

  @DeleteDateColumn({ type: 'timestamp', nullable: true })
  deletedAt?: Date;
}
