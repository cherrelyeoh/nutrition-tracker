// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_many_user_entity_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetManyUserEntityResponseDto _$GetManyUserEntityResponseDtoFromJson(
        Map<String, dynamic> json) =>
    GetManyUserEntityResponseDto(
      data: (json['data'] as List<dynamic>)
          .map((e) => UserEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: json['count'] as num,
      total: json['total'] as num,
      page: json['page'] as num,
      pageCount: json['pageCount'] as num,
    );

Map<String, dynamic> _$GetManyUserEntityResponseDtoToJson(
        GetManyUserEntityResponseDto instance) =>
    <String, dynamic>{
      'data': instance.data,
      'count': instance.count,
      'total': instance.total,
      'page': instance.page,
      'pageCount': instance.pageCount,
    };
