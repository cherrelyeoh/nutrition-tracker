// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_session_dto.dart';

part 'login_response_dto.g.dart';

@JsonSerializable()
class LoginResponseDto {
  const LoginResponseDto({
    required this.user,
  });
  
  factory LoginResponseDto.fromJson(Map<String, Object?> json) => _$LoginResponseDtoFromJson(json);
  
  final UserSessionDto user;

  Map<String, Object?> toJson() => _$LoginResponseDtoToJson(this);
}
