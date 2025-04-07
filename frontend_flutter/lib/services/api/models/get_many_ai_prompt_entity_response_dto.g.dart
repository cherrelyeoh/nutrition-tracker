// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_many_ai_prompt_entity_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetManyAIPromptEntityResponseDto _$GetManyAIPromptEntityResponseDtoFromJson(
        Map<String, dynamic> json) =>
    GetManyAIPromptEntityResponseDto(
      data: (json['data'] as List<dynamic>)
          .map((e) => AIPromptEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: json['count'] as num,
      total: json['total'] as num,
      page: json['page'] as num,
      pageCount: json['pageCount'] as num,
    );

Map<String, dynamic> _$GetManyAIPromptEntityResponseDtoToJson(
        GetManyAIPromptEntityResponseDto instance) =>
    <String, dynamic>{
      'data': instance.data,
      'count': instance.count,
      'total': instance.total,
      'page': instance.page,
      'pageCount': instance.pageCount,
    };
