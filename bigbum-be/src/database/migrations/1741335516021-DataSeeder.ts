import { MigrationInterface, QueryRunner } from 'typeorm';

export class DataSeeder1741335516021 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(`
        INSERT INTO "User"
          ("name", "emailAddress", "mobileNumber", "password", "passwordResetCode", "accountStatus", "createdBy", "lastUpdatedBy", "subscriptionId", "creationDate", "lastUpdatedDate") 
        VALUES 
          ('John Doe', 'john.doe@example.com', '1234567890', '$2b$10$abcdefg12345678hashedpassword', NULL, 1, 'admin', 'admin', NULL, NOW(), NOW());
      `);
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(`
      DELETE FROM "User" WHERE emailAddress = 'john.doe@example.com';
    `);
  }
}
