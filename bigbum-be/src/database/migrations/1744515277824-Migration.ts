import { MigrationInterface, QueryRunner } from "typeorm";

export class Migration1744515277824 implements MigrationInterface {
    name = 'Migration1744515277824'

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "UserMealLog" ADD "dateOfMeal" TIMESTAMP`);
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "UserMealLog" DROP COLUMN "dateOfMeal"`);
    }

}
