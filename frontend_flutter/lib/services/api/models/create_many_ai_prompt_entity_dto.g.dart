// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_many_ai_prompt_entity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateManyAIPromptEntityDto _$CreateManyAIPromptEntityDtoFromJson(
        Map<String, dynamic> json) =>
    CreateManyAIPromptEntityDto(
      bulk: (json['bulk'] as List<dynamic>)
          .map((e) => AIPromptEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreateManyAIPromptEntityDtoToJson(
        CreateManyAIPromptEntityDto instance) =>
    <String, dynamic>{
      'bulk': instance.bulk,
    };
