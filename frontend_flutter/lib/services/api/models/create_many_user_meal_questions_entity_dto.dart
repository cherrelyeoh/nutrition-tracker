// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'create_user_meal_question_dto.dart';

part 'create_many_user_meal_questions_entity_dto.g.dart';

@JsonSerializable()
class CreateManyUserMealQuestionsEntityDto {
  const CreateManyUserMealQuestionsEntityDto({
    required this.bulk,
  });
  
  factory CreateManyUserMealQuestionsEntityDto.fromJson(Map<String, Object?> json) => _$CreateManyUserMealQuestionsEntityDtoFromJson(json);
  
  final List<CreateUserMealQuestionDto> bulk;

  Map<String, Object?> toJson() => _$CreateManyUserMealQuestionsEntityDtoToJson(this);
}
