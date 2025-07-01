// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_entity.dart';
import 'user_meal_log_entity.dart';

part 'user_sub_meal_log_entity.g.dart';

@JsonSerializable()
class UserSubMealLogEntity {
  const UserSubMealLogEntity({
    required this.id,
    required this.mealName,
    required this.weight,
    required this.calories,
    required this.protein,
    required this.fats,
    required this.carbs,
    required this.mainMeal,
    required this.createdBy,
    required this.createdDate,
    required this.lastUpdatedDate,
    required this.deletedAt,
  });
  
  factory UserSubMealLogEntity.fromJson(Map<String, Object?> json) => _$UserSubMealLogEntityFromJson(json);
  
  final num id;
  final String mealName;
  final num weight;
  final num calories;
  final num protein;
  final num fats;
  final num carbs;
  final UserMealLogEntity mainMeal;
  final UserEntity createdBy;
  final DateTime createdDate;
  final DateTime lastUpdatedDate;
  final DateTime deletedAt;

  Map<String, Object?> toJson() => _$UserSubMealLogEntityToJson(this);
}
