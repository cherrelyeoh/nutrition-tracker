// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_biodata_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateUserBiodataDto _$CreateUserBiodataDtoFromJson(
        Map<String, dynamic> json) =>
    CreateUserBiodataDto(
      userId: json['userId'] as num,
      age: json['age'] as num,
      weight: json['weight'] as num,
      height: json['height'] as num,
      bmi: json['bmi'] as num,
      bodyFat: json['bodyFat'] as num,
      muscleMass: json['muscleMass'] as num,
      goal: json['goal'] as num,
      physicalActivity: json['physicalActivity'] as num,
      createdBy: json['createdBy'] as String,
    );

Map<String, dynamic> _$CreateUserBiodataDtoToJson(
        CreateUserBiodataDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'age': instance.age,
      'weight': instance.weight,
      'height': instance.height,
      'bmi': instance.bmi,
      'bodyFat': instance.bodyFat,
      'muscleMass': instance.muscleMass,
      'goal': instance.goal,
      'physicalActivity': instance.physicalActivity,
      'createdBy': instance.createdBy,
    };
