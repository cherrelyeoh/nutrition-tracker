// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'login_dto.g.dart';

@JsonSerializable()
class LoginDto {
  const LoginDto({
    required this.emailAddress,
    required this.password,
  });
  
  factory LoginDto.fromJson(Map<String, Object?> json) => _$LoginDtoFromJson(json);
  
  /// Registered email address
  final String emailAddress;

  /// Account password
  final String password;

  Map<String, Object?> toJson() => _$LoginDtoToJson(this);
}
