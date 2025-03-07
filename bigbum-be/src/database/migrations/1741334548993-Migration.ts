import { MigrationInterface, QueryRunner } from 'typeorm';

export class Migration1741334548993 implements MigrationInterface {
  name = 'Migration1741334548993';

  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(
      `CREATE TABLE "User" ("id" SERIAL NOT NULL, "name" character varying(100) NOT NULL, "emailAddress" character varying(255) NOT NULL, "mobileNumber" character varying(255) NOT NULL, "password" character varying(255) NOT NULL, "passwordResetCode" character varying(255), "accountStatus" integer NOT NULL, "createdBy" character varying(255) NOT NULL, "lastUpdatedBy" character varying(255) NOT NULL, "subscriptionId" integer, "creationDate" TIMESTAMP NOT NULL DEFAULT now(), "lastUpdatedDate" TIMESTAMP NOT NULL DEFAULT now(), "deletedAt" TIMESTAMP, CONSTRAINT "UQ_c7a8d184ab23d7ebdc29453832a" UNIQUE ("emailAddress"), CONSTRAINT "UQ_784d98f3a91d2228a59e71bb226" UNIQUE ("mobileNumber"), CONSTRAINT "PK_9862f679340fb2388436a5ab3e4" PRIMARY KEY ("id"))`,
    );
    await queryRunner.query(
      `CREATE TABLE "AIPrompt" ("id" SERIAL NOT NULL, "promptName" character varying(255) NOT NULL, "promptRequest" character varying(255) NOT NULL, "createdBy" character varying(255) NOT NULL, "creationDate" TIMESTAMP NOT NULL DEFAULT now(), "lastUpdatedDate" TIMESTAMP NOT NULL DEFAULT now(), "deletedAt" TIMESTAMP, CONSTRAINT "PK_f667555abdfff3f943de9424fee" PRIMARY KEY ("id"))`,
    );
    await queryRunner.query(
      `CREATE TABLE "AIIntegrationLogs" ("id" SERIAL NOT NULL, "actionUrl" character varying(255) NOT NULL, "request" text NOT NULL, "response" text NOT NULL, "responseType" text NOT NULL, "requestDuration" TIMESTAMP NOT NULL, "promptToken" integer NOT NULL, "cost" integer NOT NULL, "createdDate" TIMESTAMP NOT NULL DEFAULT now(), "lastUpdatedDate" TIMESTAMP NOT NULL DEFAULT now(), "deletedAt" TIMESTAMP, "promptType" integer, "createdBy" integer, CONSTRAINT "PK_6367a9fab37eeab20859ae0c9bf" PRIMARY KEY ("id"))`,
    );
    await queryRunner.query(
      `CREATE TABLE "UserMealLog" ("id" SERIAL NOT NULL, "mealImage" character varying(255), "mealType" character varying(255), "mealName" text NOT NULL, "weight" integer NOT NULL, "calories" integer NOT NULL, "protein" integer NOT NULL, "fats" integer NOT NULL, "carbs" integer NOT NULL, "mealLevel" integer NOT NULL, "comments" character varying(255), "createdDate" TIMESTAMP NOT NULL DEFAULT now(), "lastUpdatedDate" TIMESTAMP NOT NULL DEFAULT now(), "deletedAt" TIMESTAMP, "promptLog" integer, "createdBy" integer, CONSTRAINT "PK_c5d1ca1c7ccdc77b8cb0ea66785" PRIMARY KEY ("id"))`,
    );
    await queryRunner.query(
      `CREATE TABLE "UserSubMealLog" ("id" SERIAL NOT NULL, "mealName" text NOT NULL, "weight" integer NOT NULL, "calories" integer NOT NULL, "protein" integer NOT NULL, "fats" integer NOT NULL, "carbs" integer NOT NULL, "createdDate" TIMESTAMP NOT NULL DEFAULT now(), "lastUpdatedDate" TIMESTAMP NOT NULL DEFAULT now(), "deletedAt" TIMESTAMP, "mainMeal" integer, "createdBy" integer, CONSTRAINT "PK_02ad98d45e4d6d8b3fbca252d14" PRIMARY KEY ("id"))`,
    );
    await queryRunner.query(
      `CREATE TABLE "UserBiodataLogs" ("id" SERIAL NOT NULL, "age" integer NOT NULL, "weight" double precision NOT NULL, "height" double precision NOT NULL, "bmi" double precision NOT NULL, "createdBy" character varying(255) NOT NULL, "creationDate" TIMESTAMP NOT NULL DEFAULT now(), "lastUpdatedDate" TIMESTAMP NOT NULL DEFAULT now(), "deletedAt" TIMESTAMP, "userId" integer, CONSTRAINT "REL_7f0d07a404a4561461a5e76ea3" UNIQUE ("userId"), CONSTRAINT "PK_bae3a2531a4c2145df9dfff9dd3" PRIMARY KEY ("id"))`,
    );
    await queryRunner.query(
      `CREATE TABLE "UserBiodata" ("id" SERIAL NOT NULL, "age" integer NOT NULL, "weight" double precision NOT NULL, "height" double precision NOT NULL, "bmi" double precision NOT NULL, "goal" integer NOT NULL, "physicalActivity" integer NOT NULL, "createdBy" character varying(255) NOT NULL, "creationDate" TIMESTAMP NOT NULL DEFAULT now(), "lastUpdatedDate" TIMESTAMP NOT NULL DEFAULT now(), "deletedAt" TIMESTAMP, "userId" integer, CONSTRAINT "REL_48558d8a094e8011489d15028d" UNIQUE ("userId"), CONSTRAINT "PK_05067e838b8a67db2f0546ff088" PRIMARY KEY ("id"))`,
    );
    await queryRunner.query(
      `ALTER TABLE "AIIntegrationLogs" ADD CONSTRAINT "FK_df16c6ca3b5cc252551039621bf" FOREIGN KEY ("promptType") REFERENCES "AIPrompt"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`,
    );
    await queryRunner.query(
      `ALTER TABLE "AIIntegrationLogs" ADD CONSTRAINT "FK_c8418dfd781fd82b5d701102790" FOREIGN KEY ("createdBy") REFERENCES "User"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`,
    );
    await queryRunner.query(
      `ALTER TABLE "UserMealLog" ADD CONSTRAINT "FK_6b6217ea257b4649bcb0edd14c1" FOREIGN KEY ("promptLog") REFERENCES "AIIntegrationLogs"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`,
    );
    await queryRunner.query(
      `ALTER TABLE "UserMealLog" ADD CONSTRAINT "FK_57874e84d7330e5632a66b597e7" FOREIGN KEY ("createdBy") REFERENCES "User"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`,
    );
    await queryRunner.query(
      `ALTER TABLE "UserSubMealLog" ADD CONSTRAINT "FK_0bee87e8f30ab37da8868fff4d5" FOREIGN KEY ("mainMeal") REFERENCES "UserMealLog"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`,
    );
    await queryRunner.query(
      `ALTER TABLE "UserSubMealLog" ADD CONSTRAINT "FK_f5b0c824931cf5efca3ea882c2d" FOREIGN KEY ("createdBy") REFERENCES "User"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`,
    );
    await queryRunner.query(
      `ALTER TABLE "UserBiodataLogs" ADD CONSTRAINT "FK_7f0d07a404a4561461a5e76ea33" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`,
    );
    await queryRunner.query(
      `ALTER TABLE "UserBiodata" ADD CONSTRAINT "FK_48558d8a094e8011489d15028db" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`,
    );
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(
      `ALTER TABLE "UserBiodata" DROP CONSTRAINT "FK_48558d8a094e8011489d15028db"`,
    );
    await queryRunner.query(
      `ALTER TABLE "UserBiodataLogs" DROP CONSTRAINT "FK_7f0d07a404a4561461a5e76ea33"`,
    );
    await queryRunner.query(
      `ALTER TABLE "UserSubMealLog" DROP CONSTRAINT "FK_f5b0c824931cf5efca3ea882c2d"`,
    );
    await queryRunner.query(
      `ALTER TABLE "UserSubMealLog" DROP CONSTRAINT "FK_0bee87e8f30ab37da8868fff4d5"`,
    );
    await queryRunner.query(
      `ALTER TABLE "UserMealLog" DROP CONSTRAINT "FK_57874e84d7330e5632a66b597e7"`,
    );
    await queryRunner.query(
      `ALTER TABLE "UserMealLog" DROP CONSTRAINT "FK_6b6217ea257b4649bcb0edd14c1"`,
    );
    await queryRunner.query(
      `ALTER TABLE "AIIntegrationLogs" DROP CONSTRAINT "FK_c8418dfd781fd82b5d701102790"`,
    );
    await queryRunner.query(
      `ALTER TABLE "AIIntegrationLogs" DROP CONSTRAINT "FK_df16c6ca3b5cc252551039621bf"`,
    );
    await queryRunner.query(`DROP TABLE "UserBiodata"`);
    await queryRunner.query(`DROP TABLE "UserBiodataLogs"`);
    await queryRunner.query(`DROP TABLE "UserSubMealLog"`);
    await queryRunner.query(`DROP TABLE "UserMealLog"`);
    await queryRunner.query(`DROP TABLE "AIIntegrationLogs"`);
    await queryRunner.query(`DROP TABLE "AIPrompt"`);
    await queryRunner.query(`DROP TABLE "User"`);
  }
}
