// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'create_user_dto.g.dart';

@JsonSerializable()
class CreateUserDto {
  const CreateUserDto({
    required this.name,
    required this.emailAddress,
    required this.mobileNumber,
    required this.password,
    required this.passwordResetCode,
    required this.accountStatus,
    required this.createdBy,
    required this.lastUpdatedBy,
    required this.subscriptionId,
  });
  
  factory CreateUserDto.fromJson(Map<String, Object?> json) => _$CreateUserDtoFromJson(json);
  
  final String name;
  final String emailAddress;
  final String mobileNumber;
  final String password;
  final String passwordResetCode;
  final num accountStatus;
  final String createdBy;
  final String lastUpdatedBy;
  final num subscriptionId;

  Map<String, Object?> toJson() => _$CreateUserDtoToJson(this);
}
