// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_many_user_biodata_entity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateManyUserBiodataEntityDto _$CreateManyUserBiodataEntityDtoFromJson(
        Map<String, dynamic> json) =>
    CreateManyUserBiodataEntityDto(
      bulk: (json['bulk'] as List<dynamic>)
          .map((e) => CreateUserBiodataDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreateManyUserBiodataEntityDtoToJson(
        CreateManyUserBiodataEntityDto instance) =>
    <String, dynamic>{
      'bulk': instance.bulk,
    };
