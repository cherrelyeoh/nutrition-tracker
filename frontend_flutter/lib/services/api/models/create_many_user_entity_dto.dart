// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_entity.dart';

part 'create_many_user_entity_dto.g.dart';

@JsonSerializable()
class CreateManyUserEntityDto {
  const CreateManyUserEntityDto({
    required this.bulk,
  });
  
  factory CreateManyUserEntityDto.fromJson(Map<String, Object?> json) => _$CreateManyUserEntityDtoFromJson(json);
  
  final List<UserEntity> bulk;

  Map<String, Object?> toJson() => _$CreateManyUserEntityDtoToJson(this);
}
