// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_entity.dart';

part 'get_many_user_entity_response_dto.g.dart';

@JsonSerializable()
class GetManyUserEntityResponseDto {
  const GetManyUserEntityResponseDto({
    required this.data,
    required this.count,
    required this.total,
    required this.page,
    required this.pageCount,
  });
  
  factory GetManyUserEntityResponseDto.fromJson(Map<String, Object?> json) => _$GetManyUserEntityResponseDtoFromJson(json);
  
  final List<UserEntity> data;
  final num count;
  final num total;
  final num page;
  final num pageCount;

  Map<String, Object?> toJson() => _$GetManyUserEntityResponseDtoToJson(this);
}
