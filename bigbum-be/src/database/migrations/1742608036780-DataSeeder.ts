import { MigrationInterface, QueryRunner } from 'typeorm';

export class DataSeeder1742608036780 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(`
            UPDATE "AIPrompt"
            SET "promptRequest" = 'Please analyze the meal image provided and estimate its calorie content and macronutrient breakdown (protein, fats, and carbohydrates). 
    
                    If additional information is needed, ask follow-up questions in the following structured format:  
    
                    {
                        "ResponseType": "Question",
                        "Result": {
                            "QuestionsList": [
                                {
                                    "Question": "What are you unsure of?",
                                    "Options": ["AnswerA", "AnswerB", "AnswerC"]
                                },
                                {
                                    "Question": "Second question of What are you unsure of?",
                                    "Options": ["AnswerA", "AnswerB", "AnswerC"]
                                }
                            ]
                        }
                    }
    
                    - Each question must provide **only multiple-choice options and you can provide 3 - 10 options**.  
                    - You can ask as much as 5 questions. Ask question that you deemed will help you with analysis if not you dont have to ask question.
                    - Only ask if you are unsure!! Else no need to ask question  
    
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
                "lastUpdatedDate" = NOW()
            WHERE "promptName" = 'FullNutrientsWithImage';
        `);

    await queryRunner.query(`
            UPDATE "AIPrompt"
            SET "promptRequest" = 'Please analyze the meal image provided and estimate its calorie content and macronutrient breakdown (protein, fats, and carbohydrates). 

**Return the nutritional analysis strictly in the following JSON format** (do not add any extra text or explanations before or after the JSON):

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
',
                "lastUpdatedDate" = NOW()
            WHERE "promptName" = 'OnlyNutrientsWithImage';
        `);
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(`
        UPDATE "AIPrompt"
        SET "promptRequest" = 'Please analyze the meal image provided and estimate its calorie content and macronutrient breakdown (protein, fats, and carbohydrates). 

                If additional information is needed, ask follow-up questions in the following structured format:  

                {
                    "ResponseType": "Question",
                    "Result": {
                        "QuestionsList": [
                            {
                                "Question": "What are you unsure of?",
                                "Options": ["AnswerA", "AnswerB", "AnswerC"]
                            },
                            {
                                "Question": "Second question of What are you unsure of?",
                                "Options": ["AnswerA", "AnswerB", "AnswerC"]
                            }
                        ]
                    }
                }

                - Each question must provide **only multiple-choice options and you can provide 3 - 10 options**.  
                - You can ask as much as 5 questions. Ask question that you deemed will help you with analysis if not you dont have to ask question.
                - Only ask if you are unsure!! Else no need to ask question  

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
            "lastUpdatedDate" = NOW()
        WHERE "promptName" = 'FullNutrientsWithImage';
    `);

    await queryRunner.query(`
        UPDATE "AIPrompt"
        SET "promptRequest" = 'Please analyze the meal image provided and estimate its calorie content and macronutrient breakdown (protein, fats, and carbohydrates). 

**Return the nutritional analysis strictly in the following JSON format** (do not add any extra text or explanations before or after the JSON):

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
',
            "lastUpdatedDate" = NOW()
        WHERE "promptName" = 'OnlyNutrientsWithImage';
    `);
  }
}
