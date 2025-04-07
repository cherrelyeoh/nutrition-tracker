// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'ai_prompt_entity.dart';

part 'get_many_ai_prompt_entity_response_dto.g.dart';

@JsonSerializable()
class GetManyAIPromptEntityResponseDto {
  const GetManyAIPromptEntityResponseDto({
    required this.data,
    required this.count,
    required this.total,
    required this.page,
    required this.pageCount,
  });
  
  factory GetManyAIPromptEntityResponseDto.fromJson(Map<String, Object?> json) => _$GetManyAIPromptEntityResponseDtoFromJson(json);
  
  final List<AIPromptEntity> data;
  final num count;
  final num total;
  final num page;
  final num pageCount;

  Map<String, Object?> toJson() => _$GetManyAIPromptEntityResponseDtoToJson(this);
}
