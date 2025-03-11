import { MigrationInterface, QueryRunner } from 'typeorm';

export class DataSeeder1741695928273 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(`
            INSERT INTO "AIPrompt" ("promptName", "promptRequest", "createdBy", "creationDate", "lastUpdatedDate")
            VALUES (
                'OnlyNutrientsWithImage',
                'Please analyze the meal image provided and estimate its calorie content and macronutrient breakdown (protein, fats, and carbohydrates). 
                    Return the nutritional analysis in the following format:  

                {
                    "ResponseType": "NutrientResult",
                    "Result": {
                        "Protein": "56",
                        "Carbs": "20",
                        "Fats": "5",
                        "Calories": "500",
                        "Comments": "This is a good dish.",
                        "Grade": 4,
                        "FoodDescription": [
                            {
                                "Mutton Curry": {
                                    "Weight": "80g",
                                    "Calories": "140kcal",
                                    "Protein": "12g",
                                    "Fats": "9g",
                                    "Carbs": "10g"
                                }
                            },
                            {
                                "Rice": {
                                    "Weight": "100g",
                                    "Calories": "130kcal",
                                    "Protein": "3g",
                                    "Fats": "1g",
                                    "Carbs": "28g"
                                }
                            }
                        ]
                    }
                }

                Additional information is provided below, use it to estimate it more accurately:  
                ',
                'System', 
                NOW(), 
                NOW()
            );
        `);
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(`
        DELETE FROM "AIPrompt" WHERE "promptName" = 'OnlyNutrientsWithImage';
    `);
  }
}
