// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'ai_prompt_entity.dart';

part 'create_many_ai_prompt_entity_dto.g.dart';

@JsonSerializable()
class CreateManyAIPromptEntityDto {
  const CreateManyAIPromptEntityDto({
    required this.bulk,
  });
  
  factory CreateManyAIPromptEntityDto.fromJson(Map<String, Object?> json) => _$CreateManyAIPromptEntityDtoFromJson(json);
  
  final List<AIPromptEntity> bulk;

  Map<String, Object?> toJson() => _$CreateManyAIPromptEntityDtoToJson(this);
}
