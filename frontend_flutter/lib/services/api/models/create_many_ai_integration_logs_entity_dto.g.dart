// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_many_ai_integration_logs_entity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateManyAIIntegrationLogsEntityDto
    _$CreateManyAIIntegrationLogsEntityDtoFromJson(Map<String, dynamic> json) =>
        CreateManyAIIntegrationLogsEntityDto(
          bulk: (json['bulk'] as List<dynamic>)
              .map((e) =>
                  AIIntegrationLogsEntity.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$CreateManyAIIntegrationLogsEntityDtoToJson(
        CreateManyAIIntegrationLogsEntityDto instance) =>
    <String, dynamic>{
      'bulk': instance.bulk,
    };
