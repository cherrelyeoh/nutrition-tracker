import { MigrationInterface, QueryRunner } from "typeorm";

export class Migration1741099334009 implements MigrationInterface {
    name = 'Migration1741099334009'

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "UserBiodataLogs" DROP CONSTRAINT "FK_9e86284e7479a64baf6a12eebd3"`);
        await queryRunner.query(`ALTER TABLE "User" RENAME COLUMN "userId" TO "id"`);
        await queryRunner.query(`ALTER TABLE "User" RENAME CONSTRAINT "PK_45f0625bd8172eb9c821c948a0f" TO "PK_9862f679340fb2388436a5ab3e4"`);
        await queryRunner.query(`ALTER SEQUENCE "User_userId_seq" RENAME TO "User_id_seq"`);
        await queryRunner.query(`ALTER TABLE "UserBiodataLogs" RENAME COLUMN "userBioDataId" TO "userId"`);
        await queryRunner.query(`ALTER TABLE "UserBiodata" RENAME COLUMN "userBioDataId" TO "id"`);
        await queryRunner.query(`ALTER TABLE "UserBiodata" RENAME CONSTRAINT "PK_c14c870733dbb11a8c443b66156" TO "PK_05067e838b8a67db2f0546ff088"`);
        await queryRunner.query(`ALTER SEQUENCE "UserBiodata_userBioDataId_seq" RENAME TO "UserBiodata_id_seq"`);
        await queryRunner.query(`CREATE TABLE "AIPrompt" ("id" SERIAL NOT NULL, "promptName" character varying(255) NOT NULL, "promptRequest" character varying(255) NOT NULL, "createdBy" character varying(255) NOT NULL, "creationDate" TIMESTAMP NOT NULL DEFAULT now(), "lastUpdatedDate" TIMESTAMP NOT NULL DEFAULT now(), "deletedAt" TIMESTAMP, CONSTRAINT "PK_f667555abdfff3f943de9424fee" PRIMARY KEY ("id"))`);
        await queryRunner.query(`CREATE TABLE "AIIntegrationLogs" ("id" SERIAL NOT NULL, "actionUrl" character varying(255) NOT NULL, "request" text NOT NULL, "response" text NOT NULL, "responseType" text NOT NULL, "requestDuration" TIMESTAMP NOT NULL, "promptToken" integer NOT NULL, "cost" integer NOT NULL, "createdDate" TIMESTAMP NOT NULL DEFAULT now(), "lastUpdatedDate" TIMESTAMP NOT NULL DEFAULT now(), "deletedAt" TIMESTAMP, "promptType" integer, "createdBy" integer, CONSTRAINT "PK_6367a9fab37eeab20859ae0c9bf" PRIMARY KEY ("id"))`);
        await queryRunner.query(`CREATE TABLE "UserMealLog" ("id" SERIAL NOT NULL, "mealImage" character varying(255), "mealText" character varying(255) NOT NULL, "mealLevel" integer NOT NULL, "remarks" character varying(255), "mealName" text NOT NULL, "weight" integer NOT NULL, "calories" integer NOT NULL, "protein" integer NOT NULL, "fats" integer NOT NULL, "carbs" integer NOT NULL, "createdDate" TIMESTAMP NOT NULL DEFAULT now(), "lastUpdatedDate" TIMESTAMP NOT NULL DEFAULT now(), "deletedAt" TIMESTAMP, "promptLog" integer, "createdBy" integer, CONSTRAINT "PK_c5d1ca1c7ccdc77b8cb0ea66785" PRIMARY KEY ("id"))`);
        await queryRunner.query(`ALTER TABLE "AIIntegrationLogs" ADD CONSTRAINT "FK_df16c6ca3b5cc252551039621bf" FOREIGN KEY ("promptType") REFERENCES "AIPrompt"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
        await queryRunner.query(`ALTER TABLE "AIIntegrationLogs" ADD CONSTRAINT "FK_c8418dfd781fd82b5d701102790" FOREIGN KEY ("createdBy") REFERENCES "User"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
        await queryRunner.query(`ALTER TABLE "UserMealLog" ADD CONSTRAINT "FK_6b6217ea257b4649bcb0edd14c1" FOREIGN KEY ("promptLog") REFERENCES "AIIntegrationLogs"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
        await queryRunner.query(`ALTER TABLE "UserMealLog" ADD CONSTRAINT "FK_57874e84d7330e5632a66b597e7" FOREIGN KEY ("createdBy") REFERENCES "User"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
        await queryRunner.query(`ALTER TABLE "UserBiodataLogs" ADD CONSTRAINT "FK_7f0d07a404a4561461a5e76ea33" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "UserBiodataLogs" DROP CONSTRAINT "FK_7f0d07a404a4561461a5e76ea33"`);
        await queryRunner.query(`ALTER TABLE "UserMealLog" DROP CONSTRAINT "FK_57874e84d7330e5632a66b597e7"`);
        await queryRunner.query(`ALTER TABLE "UserMealLog" DROP CONSTRAINT "FK_6b6217ea257b4649bcb0edd14c1"`);
        await queryRunner.query(`ALTER TABLE "AIIntegrationLogs" DROP CONSTRAINT "FK_c8418dfd781fd82b5d701102790"`);
        await queryRunner.query(`ALTER TABLE "AIIntegrationLogs" DROP CONSTRAINT "FK_df16c6ca3b5cc252551039621bf"`);
        await queryRunner.query(`DROP TABLE "UserMealLog"`);
        await queryRunner.query(`DROP TABLE "AIIntegrationLogs"`);
        await queryRunner.query(`DROP TABLE "AIPrompt"`);
        await queryRunner.query(`ALTER SEQUENCE "UserBiodata_id_seq" RENAME TO "UserBiodata_userBioDataId_seq"`);
        await queryRunner.query(`ALTER TABLE "UserBiodata" RENAME CONSTRAINT "PK_05067e838b8a67db2f0546ff088" TO "PK_c14c870733dbb11a8c443b66156"`);
        await queryRunner.query(`ALTER TABLE "UserBiodata" RENAME COLUMN "id" TO "userBioDataId"`);
        await queryRunner.query(`ALTER TABLE "UserBiodataLogs" RENAME COLUMN "userId" TO "userBioDataId"`);
        await queryRunner.query(`ALTER SEQUENCE "User_id_seq" RENAME TO "User_userId_seq"`);
        await queryRunner.query(`ALTER TABLE "User" RENAME CONSTRAINT "PK_9862f679340fb2388436a5ab3e4" TO "PK_45f0625bd8172eb9c821c948a0f"`);
        await queryRunner.query(`ALTER TABLE "User" RENAME COLUMN "id" TO "userId"`);
        await queryRunner.query(`ALTER TABLE "UserBiodataLogs" ADD CONSTRAINT "FK_9e86284e7479a64baf6a12eebd3" FOREIGN KEY ("userBioDataId") REFERENCES "UserBiodata"("userBioDataId") ON DELETE NO ACTION ON UPDATE NO ACTION`);
    }

}
