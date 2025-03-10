import { MigrationInterface, QueryRunner } from "typeorm";

export class Migration1741606655642 implements MigrationInterface {
    name = 'Migration1741606655642'

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`CREATE TABLE "UserMealQuestions" ("id" SERIAL NOT NULL, "question" text NOT NULL, "options" jsonb NOT NULL, "answer" text, "createdDate" TIMESTAMP NOT NULL DEFAULT now(), "lastUpdatedDate" TIMESTAMP NOT NULL DEFAULT now(), "deletedAt" TIMESTAMP, "createdBy" integer, CONSTRAINT "PK_4a65fbe4fffec40d643381d61df" PRIMARY KEY ("id"))`);
        await queryRunner.query(`ALTER TABLE "UserMealQuestions" ADD CONSTRAINT "FK_c442b166aca1f97023cc1215e41" FOREIGN KEY ("createdBy") REFERENCES "UserMealLog"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "UserMealQuestions" DROP CONSTRAINT "FK_c442b166aca1f97023cc1215e41"`);
        await queryRunner.query(`DROP TABLE "UserMealQuestions"`);
    }

}
