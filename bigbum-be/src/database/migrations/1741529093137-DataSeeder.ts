import { MigrationInterface, QueryRunner } from 'typeorm';

export class DataSeeder1741529093137 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(`
                INSERT INTO "AIPrompt" ("promptName", "promptRequest", "createdBy", "creationDate", "lastUpdatedDate")
                VALUES (
                    'FullNutrientsWithImage',
                    'Please analyze the meal image provided and estimate its calorie content and macronutrient breakdown (protein, fats, and carbohydrates). 
    
                    If additional information is needed, ask follow-up questions in the following structured format:  
    
                    {
                        "ResponseType": "Question",
                        "Result": {
                            "QuestionsList": [
                                {
                                    "Question": "What is the serving size of rice?",
                                    "Options": ["50g", "100g", "150g"]
                                },
                                {
                                    "Question": "What type of meat is in the curry?",
                                    "Options": ["Chicken", "Mutton", "Beef"]
                                }
                            ]
                        }
                    }
    
                    - Each question must provide **only multiple-choice options**.  
                    - The "SelectedOption" field will be filled once the user makes a selection.  
    
                    Once you have sufficient information, return the nutritional analysis in the following format:  
    
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
    
                    If the input is invalid or cannot be processed, respond in the following error format:  
    
                    {
                        "ResponseType": "Error",
                        "Result": {
                            "Message": "This is not a food image."
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
                DELETE FROM "AIPrompt" WHERE "promptName" = 'FullNutrientsWithImage';
            `);
  }
}
