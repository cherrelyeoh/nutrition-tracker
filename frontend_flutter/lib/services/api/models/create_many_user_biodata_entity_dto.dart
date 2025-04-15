// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'create_user_biodata_dto.dart';

part 'create_many_user_biodata_entity_dto.g.dart';

@JsonSerializable()
class CreateManyUserBiodataEntityDto {
  const CreateManyUserBiodataEntityDto({
    required this.bulk,
  });
  
  factory CreateManyUserBiodataEntityDto.fromJson(Map<String, Object?> json) => _$CreateManyUserBiodataEntityDtoFromJson(json);
  
  final List<CreateUserBiodataDto> bulk;

  Map<String, Object?> toJson() => _$CreateManyUserBiodataEntityDtoToJson(this);
}
