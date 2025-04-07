// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_many_user_meal_questions_entity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateManyUserMealQuestionsEntityDto
    _$CreateManyUserMealQuestionsEntityDtoFromJson(Map<String, dynamic> json) =>
        CreateManyUserMealQuestionsEntityDto(
          bulk: (json['bulk'] as List<dynamic>)
              .map((e) =>
                  UserMealQuestionsEntity.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$CreateManyUserMealQuestionsEntityDtoToJson(
        CreateManyUserMealQuestionsEntityDto instance) =>
    <String, dynamic>{
      'bulk': instance.bulk,
    };
