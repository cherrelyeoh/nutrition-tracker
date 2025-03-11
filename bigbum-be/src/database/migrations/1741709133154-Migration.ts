import { MigrationInterface, QueryRunner } from "typeorm";

export class Migration1741709133154 implements MigrationInterface {
    name = 'Migration1741709133154'

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "UserMealQuestions" DROP CONSTRAINT "FK_c442b166aca1f97023cc1215e41"`);
        await queryRunner.query(`ALTER TABLE "UserMealQuestions" RENAME COLUMN "createdBy" TO "userMealLog"`);
        await queryRunner.query(`ALTER TABLE "UserMealQuestions" ADD CONSTRAINT "FK_5d4034c4ead7b76885be14d35fd" FOREIGN KEY ("userMealLog") REFERENCES "UserMealLog"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "UserMealQuestions" DROP CONSTRAINT "FK_5d4034c4ead7b76885be14d35fd"`);
        await queryRunner.query(`ALTER TABLE "UserMealQuestions" RENAME COLUMN "userMealLog" TO "createdBy"`);
        await queryRunner.query(`ALTER TABLE "UserMealQuestions" ADD CONSTRAINT "FK_c442b166aca1f97023cc1215e41" FOREIGN KEY ("createdBy") REFERENCES "UserMealLog"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
    }

}
