// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_many_user_entity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateManyUserEntityDto _$CreateManyUserEntityDtoFromJson(
        Map<String, dynamic> json) =>
    CreateManyUserEntityDto(
      bulk: (json['bulk'] as List<dynamic>)
          .map((e) => UserEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreateManyUserEntityDtoToJson(
        CreateManyUserEntityDto instance) =>
    <String, dynamic>{
      'bulk': instance.bulk,
    };
