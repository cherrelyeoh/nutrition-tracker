// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'object0.g.dart';

@JsonSerializable()
class Object0 {
  const Object0({
    required this.imageBase64,
  });
  
  factory Object0.fromJson(Map<String, Object?> json) => _$Object0FromJson(json);
  
  /// Base64-encoded image
  final String imageBase64;

  Map<String, Object?> toJson() => _$Object0ToJson(this);
}
