// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'ai_integration_logs_entity.dart';

part 'create_many_ai_integration_logs_entity_dto.g.dart';

@JsonSerializable()
class CreateManyAIIntegrationLogsEntityDto {
  const CreateManyAIIntegrationLogsEntityDto({
    required this.bulk,
  });
  
  factory CreateManyAIIntegrationLogsEntityDto.fromJson(Map<String, Object?> json) => _$CreateManyAIIntegrationLogsEntityDtoFromJson(json);
  
  final List<AIIntegrationLogsEntity> bulk;

  Map<String, Object?> toJson() => _$CreateManyAIIntegrationLogsEntityDtoToJson(this);
}
