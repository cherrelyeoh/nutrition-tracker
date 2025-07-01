// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'ai_integration_logs_entity.dart';
import 'user_entity.dart';

part 'user_meal_log_entity.g.dart';

@JsonSerializable()
class UserMealLogEntity {
  const UserMealLogEntity({
    required this.id,
    required this.mealImage,
    required this.mealType,
    required this.isComplete,
    required this.dateOfMeal,
    required this.mealName,
    required this.weight,
    required this.calories,
    required this.protein,
    required this.fats,
    required this.carbs,
    required this.mealLevel,
    required this.comments,
    required this.promptLog,
    required this.createdBy,
    required this.createdDate,
    required this.lastUpdatedDate,
    required this.deletedAt,
  });
  
  factory UserMealLogEntity.fromJson(Map<String, Object?> json) => _$UserMealLogEntityFromJson(json);
  
  final num id;
  final String mealImage;
  final String mealType;
  final bool isComplete;
  final DateTime dateOfMeal;
  final String mealName;
  final num weight;
  final num calories;
  final num protein;
  final num fats;
  final num carbs;
  final num mealLevel;
  final String comments;
  final AIIntegrationLogsEntity promptLog;
  final UserEntity createdBy;
  final DateTime createdDate;
  final DateTime lastUpdatedDate;
  final DateTime deletedAt;

  Map<String, Object?> toJson() => _$UserMealLogEntityToJson(this);
}
