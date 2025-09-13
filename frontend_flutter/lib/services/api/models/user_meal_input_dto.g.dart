// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_meal_input_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserMealInputDto _$UserMealInputDtoFromJson(Map<String, dynamic> json) =>
    UserMealInputDto(
      userId: json['userId'] as num,
      userMealId: json['userMealId'] as num?,
      mealImage: json['mealImage'] as String,
      mealName: json['mealName'] as String,
      dateOfMeal: DateTime.parse(json['dateOfMeal'] as String),
    );

Map<String, dynamic> _$UserMealInputDtoToJson(UserMealInputDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userMealId': instance.userMealId,
      'mealImage': instance.mealImage,
      'mealName': instance.mealName,
      'dateOfMeal': instance.dateOfMeal.toIso8601String(),
    };
