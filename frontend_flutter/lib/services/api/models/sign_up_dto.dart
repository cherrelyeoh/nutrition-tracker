// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'sign_up_dto.g.dart';

@JsonSerializable()
class SignUpDto {
  const SignUpDto({
    required this.name,
    required this.emailAddress,
    required this.mobileNumber,
    required this.password,
  });
  
  factory SignUpDto.fromJson(Map<String, Object?> json) => _$SignUpDtoFromJson(json);
  
  /// Full name of the user
  final String name;

  /// Valid email address
  final String emailAddress;

  /// Phone number in international format
  final String mobileNumber;

  /// Password with minimum 8 characters
  final String password;

  Map<String, Object?> toJson() => _$SignUpDtoToJson(this);
}
