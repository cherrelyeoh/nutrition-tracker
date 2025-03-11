import { MigrationInterface, QueryRunner } from 'typeorm';

export class Migration1741705650005 implements MigrationInterface {
  name = 'Migration1741705650005';

  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(
      `ALTER TABLE "AIIntegrationLogs" DROP COLUMN "cost"`,
    );
    await queryRunner.query(
      `ALTER TABLE "AIIntegrationLogs" ADD "cost" double precision NOT NULL DEFAULT '0'`,
    );
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(
      `ALTER TABLE "AIIntegrationLogs" DROP COLUMN "cost"`,
    );
    await queryRunner.query(
      `ALTER TABLE "AIIntegrationLogs" ADD "cost" integer NOT NULL`,
    );
  }
}
