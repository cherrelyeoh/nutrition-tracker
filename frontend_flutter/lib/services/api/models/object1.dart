// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'object1.g.dart';

@JsonSerializable()
class Object1 {
  const Object1({
    required this.userId,
    required this.mealImage,
    required this.mealName,
  });
  
  factory Object1.fromJson(Map<String, Object?> json) => _$Object1FromJson(json);
  
  /// ID of the user
  final num userId;

  /// Base64-encoded meal image
  final String mealImage;

  /// Name of the meal
  final String mealName;

  Map<String, Object?> toJson() => _$Object1ToJson(this);
}
