import { MigrationInterface, QueryRunner } from 'typeorm';

export class Migration1741529056926 implements MigrationInterface {
  name = 'Migration1741529056926';

  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(
      `ALTER TABLE "AIPrompt" DROP COLUMN "promptRequest"`,
    );
    await queryRunner.query(
      `ALTER TABLE "AIPrompt" ADD "promptRequest" text NOT NULL`,
    );
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(
      `ALTER TABLE "AIPrompt" DROP COLUMN "promptRequest"`,
    );
    await queryRunner.query(
      `ALTER TABLE "AIPrompt" ADD "promptRequest" character varying(255) NOT NULL`,
    );
  }
}
