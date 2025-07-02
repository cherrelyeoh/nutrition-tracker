import { MigrationInterface, QueryRunner } from "typeorm";

export class Migration1751461763284 implements MigrationInterface {
    name = 'Migration1751461763284'

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`CREATE TYPE "public"."UserIntakeTarget_mainmacro_enum" AS ENUM('Protein', 'Carbs', 'Fats')`);
        await queryRunner.query(`CREATE TABLE "UserIntakeTarget" ("id" SERIAL NOT NULL, "calorie" double precision NOT NULL, "fats" double precision NOT NULL, "carbs" double precision NOT NULL, "protein" double precision NOT NULL, "mainMacro" "public"."UserIntakeTarget_mainmacro_enum" NOT NULL, "createdBy" character varying(255) NOT NULL, "creationDate" TIMESTAMP NOT NULL DEFAULT now(), "lastUpdatedDate" TIMESTAMP NOT NULL DEFAULT now(), "deletedAt" TIMESTAMP, "userId" integer, CONSTRAINT "REL_b29f736fb44102c49a922d9046" UNIQUE ("userId"), CONSTRAINT "PK_51fef2effa31b0b1797631bb273" PRIMARY KEY ("id"))`);
        await queryRunner.query(`ALTER TABLE "UserBiodata" ADD "bodyFat" double precision NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserBiodata" ADD "muscleMass" double precision NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserBiodataLogs" ADD "bodyFat" double precision NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserBiodataLogs" ADD "muscleMass" double precision NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserMealLog" DROP COLUMN "mealImage"`);
        await queryRunner.query(`ALTER TABLE "UserMealLog" ADD "mealImage" text`);
        await queryRunner.query(`ALTER TABLE "UserMealLog" ALTER COLUMN "mealType" DROP NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserSubMealLog" ALTER COLUMN "mealName" DROP NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserSubMealLog" ALTER COLUMN "weight" DROP NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserSubMealLog" ALTER COLUMN "calories" DROP NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserSubMealLog" ALTER COLUMN "protein" DROP NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserSubMealLog" ALTER COLUMN "fats" DROP NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserSubMealLog" ALTER COLUMN "carbs" DROP NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserIntakeTarget" ADD CONSTRAINT "FK_b29f736fb44102c49a922d90461" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "UserIntakeTarget" DROP CONSTRAINT "FK_b29f736fb44102c49a922d90461"`);
        await queryRunner.query(`ALTER TABLE "UserSubMealLog" ALTER COLUMN "carbs" SET NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserSubMealLog" ALTER COLUMN "fats" SET NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserSubMealLog" ALTER COLUMN "protein" SET NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserSubMealLog" ALTER COLUMN "calories" SET NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserSubMealLog" ALTER COLUMN "weight" SET NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserSubMealLog" ALTER COLUMN "mealName" SET NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserMealLog" ALTER COLUMN "mealType" SET NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserMealLog" DROP COLUMN "mealImage"`);
        await queryRunner.query(`ALTER TABLE "UserMealLog" ADD "mealImage" character varying(255) NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserBiodataLogs" DROP COLUMN "muscleMass"`);
        await queryRunner.query(`ALTER TABLE "UserBiodataLogs" DROP COLUMN "bodyFat"`);
        await queryRunner.query(`ALTER TABLE "UserBiodata" DROP COLUMN "muscleMass"`);
        await queryRunner.query(`ALTER TABLE "UserBiodata" DROP COLUMN "bodyFat"`);
        await queryRunner.query(`DROP TABLE "UserIntakeTarget"`);
        await queryRunner.query(`DROP TYPE "public"."UserIntakeTarget_mainmacro_enum"`);
    }

}
