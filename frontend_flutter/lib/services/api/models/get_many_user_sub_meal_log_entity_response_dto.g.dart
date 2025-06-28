// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_many_user_sub_meal_log_entity_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetManyUserSubMealLogEntityResponseDto
    _$GetManyUserSubMealLogEntityResponseDtoFromJson(
            Map<String, dynamic> json) =>
        GetManyUserSubMealLogEntityResponseDto(
          data: (json['data'] as List<dynamic>)
              .map((e) =>
                  UserSubMealLogEntity.fromJson(e as Map<String, dynamic>))
              .toList(),
          count: json['count'] as num,
          total: json['total'] as num,
          page: json['page'] as num,
          pageCount: json['pageCount'] as num,
        );

Map<String, dynamic> _$GetManyUserSubMealLogEntityResponseDtoToJson(
        GetManyUserSubMealLogEntityResponseDto instance) =>
    <String, dynamic>{
      'data': instance.data,
      'count': instance.count,
      'total': instance.total,
      'page': instance.page,
      'pageCount': instance.pageCount,
    };
