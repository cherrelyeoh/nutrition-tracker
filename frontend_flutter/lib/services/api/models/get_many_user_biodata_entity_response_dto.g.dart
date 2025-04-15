// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_many_user_biodata_entity_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetManyUserBiodataEntityResponseDto
    _$GetManyUserBiodataEntityResponseDtoFromJson(Map<String, dynamic> json) =>
        GetManyUserBiodataEntityResponseDto(
          data: (json['data'] as List<dynamic>)
              .map((e) => UserBiodataEntity.fromJson(e as Map<String, dynamic>))
              .toList(),
          count: json['count'] as num,
          total: json['total'] as num,
          page: json['page'] as num,
          pageCount: json['pageCount'] as num,
        );

Map<String, dynamic> _$GetManyUserBiodataEntityResponseDtoToJson(
        GetManyUserBiodataEntityResponseDto instance) =>
    <String, dynamic>{
      'data': instance.data,
      'count': instance.count,
      'total': instance.total,
      'page': instance.page,
      'pageCount': instance.pageCount,
    };
