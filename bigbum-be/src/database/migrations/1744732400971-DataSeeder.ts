import { MigrationInterface, QueryRunner } from 'typeorm';

export class DataSeeder1744732400971 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(`
      INSERT INTO "AIPrompt" ("promptName", "promptRequest", "createdBy", "creationDate", "lastUpdatedDate")
      VALUES (
        'FullBodyScanning',
        'You are a nutrition expert. A person has submitted their body image. Please analyze this information and the image of the person, and provide the best estimated daily intake targets in terms of calories and macronutrients (protein, carbs, fats), as well as identify the main macronutrient focus (e.g., "protein", "carbs", or "fats").
        
        The user''s details are as follows:
        - **Height**: [in cm]
        - **Weight**: [in kg]
        - **Age**: [in years]
        - **Goal**: [0 = Weight Loss, 1 = Maintenance, 2 = Muscle Gain]
        - **Physical Activity Level**: [0 = Sedentary, 1 = Lightly active, 2 = Moderately active, 3 = Very active, 4 = Extra active]

        Please return **strictly in the following JSON format** (no additional text or explanations before or after the JSON):
        {
          "UserIntakeTargetEstimate": {
            "Calories": "2200",
            "Protein": "150",
            "Fats": "60",
            "Carbs": "250",
            "MainMacro": "Protein"
          },
          "UserBiodataEstimate": {
            "Age": 28,
            "Weight": 70,
            "Height": 175,
            "BMI": 22.9,
            "BodyFat": 16.2,
            "MuscleMass": 32.5,
            "Goal": 2,
            "PhysicalActivity": 3
          }
        }',
        'System',
        NOW(),
        NOW()
      );
    `);
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(`
      DELETE FROM "AIPrompt" WHERE "promptName" = 'FullBodyScanning';
    `);
  }
}
