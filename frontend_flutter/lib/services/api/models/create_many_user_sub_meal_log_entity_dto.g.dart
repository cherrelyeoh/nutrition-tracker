// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_many_user_sub_meal_log_entity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateManyUserSubMealLogEntityDto _$CreateManyUserSubMealLogEntityDtoFromJson(
        Map<String, dynamic> json) =>
    CreateManyUserSubMealLogEntityDto(
      bulk: (json['bulk'] as List<dynamic>)
          .map((e) =>
              CreateUserSubMealLogDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreateManyUserSubMealLogEntityDtoToJson(
        CreateManyUserSubMealLogEntityDto instance) =>
    <String, dynamic>{
      'bulk': instance.bulk,
    };
