// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_meal_log_entity.dart';

part 'create_many_user_meal_log_entity_dto.g.dart';

@JsonSerializable()
class CreateManyUserMealLogEntityDto {
  const CreateManyUserMealLogEntityDto({
    required this.bulk,
  });
  
  factory CreateManyUserMealLogEntityDto.fromJson(Map<String, Object?> json) => _$CreateManyUserMealLogEntityDtoFromJson(json);
  
  final List<UserMealLogEntity> bulk;

  Map<String, Object?> toJson() => _$CreateManyUserMealLogEntityDtoToJson(this);
}
