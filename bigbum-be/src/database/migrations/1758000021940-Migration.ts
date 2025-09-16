import { MigrationInterface, QueryRunner } from 'typeorm';

export class Migration1758000021940 implements MigrationInterface {
  name = 'Migration1758000021940';

  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(
      `CREATE TABLE "Auth" ("id" SERIAL NOT NULL, "refreshToken" character varying(500) NOT NULL, "deviceInfo" character varying(255), "expiresAt" TIMESTAMP, "createdAt" TIMESTAMP NOT NULL DEFAULT now(), "updatedAt" TIMESTAMP NOT NULL DEFAULT now(), "userId" integer, CONSTRAINT "PK_fee4a2ee6693dbef79c39ff336d" PRIMARY KEY ("id"))`,
    );
    await queryRunner.query(
      `ALTER TABLE "Auth" ADD CONSTRAINT "FK_10b96a5538c04c5c9a93f33b960" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE NO ACTION`,
    );
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(
      `ALTER TABLE "Auth" DROP CONSTRAINT "FK_10b96a5538c04c5c9a93f33b960"`,
    );
    await queryRunner.query(`DROP TABLE "Auth"`);
  }
}
