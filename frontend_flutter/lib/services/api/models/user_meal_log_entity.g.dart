// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_meal_log_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserMealLogEntity _$UserMealLogEntityFromJson(Map<String, dynamic> json) =>
    UserMealLogEntity(
      id: json['id'] as num?,
      mealImage: json['mealImage'] as String?,
      mealType: json['mealType'] as String?,
      isComplete: json['isComplete'] as bool?,
      dateOfMeal: json['dateOfMeal'] == null
          ? null
          : DateTime.parse(json['dateOfMeal'] as String),
      mealName: json['mealName'] as String?,
      weight: json['weight'] as num?,
      calories: json['calories'] as num?,
      protein: json['protein'] as num?,
      fats: json['fats'] as num?,
      carbs: json['carbs'] as num?,
      mealLevel: json['mealLevel'] as num?,
      comments: json['comments'] as String?,
      promptLog: json['promptLog'] == null
          ? null
          : AIIntegrationLogsEntity.fromJson(
              json['promptLog'] as Map<String, dynamic>),
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

Map<String, dynamic> _$UserMealLogEntityToJson(UserMealLogEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mealImage': instance.mealImage,
      'mealType': instance.mealType,
      'isComplete': instance.isComplete,
      'dateOfMeal': instance.dateOfMeal?.toIso8601String(),
      'mealName': instance.mealName,
      'weight': instance.weight,
      'calories': instance.calories,
      'protein': instance.protein,
      'fats': instance.fats,
      'carbs': instance.carbs,
      'mealLevel': instance.mealLevel,
      'comments': instance.comments,
      'promptLog': instance.promptLog,
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedDate': instance.lastUpdatedDate?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };
