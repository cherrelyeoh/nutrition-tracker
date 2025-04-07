// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_many_ai_integration_logs_entity_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetManyAIIntegrationLogsEntityResponseDto
    _$GetManyAIIntegrationLogsEntityResponseDtoFromJson(
            Map<String, dynamic> json) =>
        GetManyAIIntegrationLogsEntityResponseDto(
          data: (json['data'] as List<dynamic>)
              .map((e) =>
                  AIIntegrationLogsEntity.fromJson(e as Map<String, dynamic>))
              .toList(),
          count: json['count'] as num,
          total: json['total'] as num,
          page: json['page'] as num,
          pageCount: json['pageCount'] as num,
        );

Map<String, dynamic> _$GetManyAIIntegrationLogsEntityResponseDtoToJson(
        GetManyAIIntegrationLogsEntityResponseDto instance) =>
    <String, dynamic>{
      'data': instance.data,
      'count': instance.count,
      'total': instance.total,
      'page': instance.page,
      'pageCount': instance.pageCount,
    };
