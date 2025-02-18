import { MigrationInterface, QueryRunner } from 'typeorm';

export class Migration1739893736150 implements MigrationInterface {
  name = 'Migration1739893736150';

  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(
      `CREATE TABLE "User" ("userId" SERIAL NOT NULL, "name" character varying(100) NOT NULL, "emailAddress" character varying(255) NOT NULL, "mobileNumber" character varying(255) NOT NULL, "password" character varying(255) NOT NULL, "passwordResetCode" character varying(255), "accountStatus" integer NOT NULL, "createdBy" character varying(255) NOT NULL, "lastUpdatedBy" character varying(255) NOT NULL, "subscriptionId" integer, "creationDate" TIMESTAMP NOT NULL DEFAULT now(), "lastUpdatedDate" TIMESTAMP NOT NULL DEFAULT now(), "deletedAt" TIMESTAMP, CONSTRAINT "UQ_c7a8d184ab23d7ebdc29453832a" UNIQUE ("emailAddress"), CONSTRAINT "UQ_784d98f3a91d2228a59e71bb226" UNIQUE ("mobileNumber"), CONSTRAINT "PK_45f0625bd8172eb9c821c948a0f" PRIMARY KEY ("userId"))`,
    );
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(`DROP TABLE "User"`);
  }
}
