import { MigrationInterface, QueryRunner } from "typeorm";

export class Migration1741605713153 implements MigrationInterface {
    name = 'Migration1741605713153'

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "UserMealLog" ADD "isComplete" boolean NOT NULL DEFAULT false`);
        await queryRunner.query(`ALTER TABLE "UserMealLog" ALTER COLUMN "mealImage" SET NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserMealLog" ALTER COLUMN "mealType" SET NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserMealLog" ALTER COLUMN "mealName" DROP NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserMealLog" ALTER COLUMN "weight" DROP NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserMealLog" ALTER COLUMN "calories" DROP NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserMealLog" ALTER COLUMN "protein" DROP NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserMealLog" ALTER COLUMN "fats" DROP NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserMealLog" ALTER COLUMN "carbs" DROP NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserMealLog" ALTER COLUMN "mealLevel" DROP NOT NULL`);
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "UserMealLog" ALTER COLUMN "mealLevel" SET NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserMealLog" ALTER COLUMN "carbs" SET NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserMealLog" ALTER COLUMN "fats" SET NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserMealLog" ALTER COLUMN "protein" SET NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserMealLog" ALTER COLUMN "calories" SET NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserMealLog" ALTER COLUMN "weight" SET NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserMealLog" ALTER COLUMN "mealName" SET NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserMealLog" ALTER COLUMN "mealType" DROP NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserMealLog" ALTER COLUMN "mealImage" DROP NOT NULL`);
        await queryRunner.query(`ALTER TABLE "UserMealLog" DROP COLUMN "isComplete"`);
    }

}
