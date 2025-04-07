// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_many_user_meal_log_entity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateManyUserMealLogEntityDto _$CreateManyUserMealLogEntityDtoFromJson(
        Map<String, dynamic> json) =>
    CreateManyUserMealLogEntityDto(
      bulk: (json['bulk'] as List<dynamic>)
          .map((e) => UserMealLogEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreateManyUserMealLogEntityDtoToJson(
        CreateManyUserMealLogEntityDto instance) =>
    <String, dynamic>{
      'bulk': instance.bulk,
    };
