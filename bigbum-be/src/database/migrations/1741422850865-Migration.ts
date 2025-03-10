import { MigrationInterface, QueryRunner } from "typeorm";

export class Migration1741422850865 implements MigrationInterface {
    name = 'Migration1741422850865'

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "AIIntegrationLogs" DROP COLUMN "requestDuration"`);
        await queryRunner.query(`ALTER TABLE "AIIntegrationLogs" ADD "requestDuration" integer`);
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "AIIntegrationLogs" DROP COLUMN "requestDuration"`);
        await queryRunner.query(`ALTER TABLE "AIIntegrationLogs" ADD "requestDuration" TIMESTAMP NOT NULL`);
    }

}
