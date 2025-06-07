// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'user_meal_input_dto.g.dart';

@JsonSerializable()
class UserMealInputDto {
  const UserMealInputDto({
    required this.userId,
    required this.userMealId,
    required this.mealImage,
    required this.mealName,
    required this.dateOfMeal,
  });
  
  factory UserMealInputDto.fromJson(Map<String, Object?> json) => _$UserMealInputDtoFromJson(json);
  
  final num userId;
  final num userMealId;
  final String mealImage;
  final String mealName;
  final DateTime dateOfMeal;

  Map<String, Object?> toJson() => _$UserMealInputDtoToJson(this);
}
