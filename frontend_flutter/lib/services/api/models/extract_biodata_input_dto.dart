// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'extract_biodata_input_dto.g.dart';

@JsonSerializable()
class ExtractBiodataInputDto {
  const ExtractBiodataInputDto({
    required this.userId,
    required this.bodyImageFront,
    required this.bodyImageSide,
    required this.height,
    required this.weight,
    required this.age,
    required this.goal,
    required this.physicalActivity,
  });
  
  factory ExtractBiodataInputDto.fromJson(Map<String, Object?> json) => _$ExtractBiodataInputDtoFromJson(json);
  
  final num userId;
  final String bodyImageFront;
  final String bodyImageSide;

  /// Height in cm
  final num height;

  /// Weight in kg
  final num weight;

  /// Age in years
  final num age;

  /// Goal: 0 = Weight Loss, 1 = Maintenance, 2 = Muscle Gain
  final num goal;

  /// Physical Activity Level: 0 = Sedentary, 1 = Lightly active, 2 = Moderately active, 3 = Very active, 4 = Extra active
  final num physicalActivity;

  Map<String, Object?> toJson() => _$ExtractBiodataInputDtoToJson(this);
}
