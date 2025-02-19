import { MigrationInterface, QueryRunner } from "typeorm";

export class Migration1739973533830 implements MigrationInterface {
    name = 'Migration1739973533830'

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`CREATE TABLE "UserBiodata" ("userBioDataId" SERIAL NOT NULL, "age" integer NOT NULL, "weight" double precision NOT NULL, "height" double precision NOT NULL, "bmi" double precision NOT NULL, "goal" integer NOT NULL, "physicalActivity" integer NOT NULL, "createdBy" character varying(255) NOT NULL, "creationDate" TIMESTAMP NOT NULL DEFAULT now(), "lastUpdatedDate" TIMESTAMP NOT NULL DEFAULT now(), "deletedAt" TIMESTAMP, "userId" integer, CONSTRAINT "REL_48558d8a094e8011489d15028d" UNIQUE ("userId"), CONSTRAINT "PK_c14c870733dbb11a8c443b66156" PRIMARY KEY ("userBioDataId"))`);
        await queryRunner.query(`CREATE TABLE "UserBiodataLogs" ("id" SERIAL NOT NULL, "age" integer NOT NULL, "weight" double precision NOT NULL, "height" double precision NOT NULL, "bmi" double precision NOT NULL, "createdBy" character varying(255) NOT NULL, "creationDate" TIMESTAMP NOT NULL DEFAULT now(), "lastUpdatedDate" TIMESTAMP NOT NULL DEFAULT now(), "deletedAt" TIMESTAMP, "userBioDataId" integer, CONSTRAINT "REL_9e86284e7479a64baf6a12eebd" UNIQUE ("userBioDataId"), CONSTRAINT "PK_bae3a2531a4c2145df9dfff9dd3" PRIMARY KEY ("id"))`);
        await queryRunner.query(`ALTER TABLE "UserBiodata" ADD CONSTRAINT "FK_48558d8a094e8011489d15028db" FOREIGN KEY ("userId") REFERENCES "User"("userId") ON DELETE NO ACTION ON UPDATE NO ACTION`);
        await queryRunner.query(`ALTER TABLE "UserBiodataLogs" ADD CONSTRAINT "FK_9e86284e7479a64baf6a12eebd3" FOREIGN KEY ("userBioDataId") REFERENCES "UserBiodata"("userBioDataId") ON DELETE NO ACTION ON UPDATE NO ACTION`);
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "UserBiodataLogs" DROP CONSTRAINT "FK_9e86284e7479a64baf6a12eebd3"`);
        await queryRunner.query(`ALTER TABLE "UserBiodata" DROP CONSTRAINT "FK_48558d8a094e8011489d15028db"`);
        await queryRunner.query(`DROP TABLE "UserBiodataLogs"`);
        await queryRunner.query(`DROP TABLE "UserBiodata"`);
    }

}
