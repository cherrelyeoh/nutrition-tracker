// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_sub_meal_log_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSubMealLogEntity _$UserSubMealLogEntityFromJson(
        Map<String, dynamic> json) =>
    UserSubMealLogEntity(
      id: json['id'] as num?,
      mealName: json['mealName'] as String?,
      weight: json['weight'] as num?,
      calories: json['calories'] as num?,
      protein: json['protein'] as num?,
      fats: json['fats'] as num?,
      carbs: json['carbs'] as num?,
      mainMeal: json['mainMeal'] == null
          ? null
          : UserMealLogEntity.fromJson(
              json['mainMeal'] as Map<String, dynamic>),
      createdBy: json['createdBy'] == null
          ? null
          : UserEntity.fromJson(json['createdBy'] as Map<String, dynamic>),
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdatedDate: json['lastUpdatedDate'] == null
          ? null
          : DateTime.parse(json['lastUpdatedDate'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$UserSubMealLogEntityToJson(
        UserSubMealLogEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mealName': instance.mealName,
      'weight': instance.weight,
      'calories': instance.calories,
      'protein': instance.protein,
      'fats': instance.fats,
      'carbs': instance.carbs,
      'mainMeal': instance.mainMeal,
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedDate': instance.lastUpdatedDate?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };
