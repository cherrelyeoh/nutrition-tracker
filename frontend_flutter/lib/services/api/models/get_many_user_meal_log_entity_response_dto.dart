// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_meal_log_entity.dart';

part 'get_many_user_meal_log_entity_response_dto.g.dart';

@JsonSerializable()
class GetManyUserMealLogEntityResponseDto {
  const GetManyUserMealLogEntityResponseDto({
    required this.data,
    required this.count,
    required this.total,
    required this.page,
    required this.pageCount,
  });
  
  factory GetManyUserMealLogEntityResponseDto.fromJson(Map<String, Object?> json) => _$GetManyUserMealLogEntityResponseDtoFromJson(json);
  
  final List<UserMealLogEntity> data;
  final num count;
  final num total;
  final num page;
  final num pageCount;

  Map<String, Object?> toJson() => _$GetManyUserMealLogEntityResponseDtoToJson(this);
}
