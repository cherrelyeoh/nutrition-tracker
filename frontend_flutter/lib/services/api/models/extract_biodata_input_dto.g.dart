// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extract_biodata_input_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExtractBiodataInputDto _$ExtractBiodataInputDtoFromJson(
        Map<String, dynamic> json) =>
    ExtractBiodataInputDto(
      userId: json['userId'] as num,
      bodyImageFront: json['bodyImageFront'] as String,
      bodyImageSide: json['bodyImageSide'] as String,
      height: json['height'] as num,
      weight: json['weight'] as num,
      age: json['age'] as num,
      goal: json['goal'] as num,
      physicalActivity: json['physicalActivity'] as num,
    );

Map<String, dynamic> _$ExtractBiodataInputDtoToJson(
        ExtractBiodataInputDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'bodyImageFront': instance.bodyImageFront,
      'bodyImageSide': instance.bodyImageSide,
      'height': instance.height,
      'weight': instance.weight,
      'age': instance.age,
      'goal': instance.goal,
      'physicalActivity': instance.physicalActivity,
    };
