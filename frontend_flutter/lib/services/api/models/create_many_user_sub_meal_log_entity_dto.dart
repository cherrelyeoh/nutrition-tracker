// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'create_user_sub_meal_log_dto.dart';

part 'create_many_user_sub_meal_log_entity_dto.g.dart';

@JsonSerializable()
class CreateManyUserSubMealLogEntityDto {
  const CreateManyUserSubMealLogEntityDto({
    required this.bulk,
  });
  
  factory CreateManyUserSubMealLogEntityDto.fromJson(Map<String, Object?> json) => _$CreateManyUserSubMealLogEntityDtoFromJson(json);
  
  final List<CreateUserSubMealLogDto> bulk;

  Map<String, Object?> toJson() => _$CreateManyUserSubMealLogEntityDtoToJson(this);
}
