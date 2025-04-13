export const MEAL_TYPES = {
  BREAKFAST: 'breakfast',
  BRUNCH: 'brunch',
  LUNCH: 'lunch',
  SNACK: 'snack',
  DINNER: 'dinner',
  DESSERT: 'dessert',
  PRE_WORKOUT: 'pre_workout',
  POST_WORKOUT: 'post_workout',
  LATE_NIGHT: 'late_night',
} as const;

export type MealType = (typeof MEAL_TYPES)[keyof typeof MEAL_TYPES];

//Display-friendly labels
export const MEAL_TYPE_LABELS: Record<MealType, string> = {
  breakfast: 'Breakfast',
  brunch: 'Brunch',
  lunch: 'Lunch',
  snack: 'Snack',
  dinner: 'Dinner',
  dessert: 'Dessert',
  pre_workout: 'Pre-Workout',
  post_workout: 'Post-Workout',
  late_night: 'Late Night',
};
