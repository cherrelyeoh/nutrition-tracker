// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'create_user_biodata_dto.g.dart';

@JsonSerializable()
class CreateUserBiodataDto {
  const CreateUserBiodataDto({
    required this.userId,
    required this.age,
    required this.weight,
    required this.height,
    required this.bmi,
    required this.bodyFat,
    required this.muscleMass,
    required this.goal,
    required this.physicalActivity,
    required this.createdBy,
  });
  
  factory CreateUserBiodataDto.fromJson(Map<String, Object?> json) => _$CreateUserBiodataDtoFromJson(json);
  
  final num userId;
  final num age;
  final num weight;
  final num height;
  final num bmi;
  final num bodyFat;
  final num muscleMass;
  final num goal;
  final num physicalActivity;
  final String createdBy;

  Map<String, Object?> toJson() => _$CreateUserBiodataDtoToJson(this);
}
