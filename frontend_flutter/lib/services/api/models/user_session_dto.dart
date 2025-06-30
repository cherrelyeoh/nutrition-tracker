// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'user_session_dto.g.dart';

@JsonSerializable()
class UserSessionDto {
  const UserSessionDto({
    required this.id,
    required this.name,
    required this.emailAddress,
    required this.mobileNumber,
    required this.accountStatus,
    required this.subscriptionId,
  });
  
  factory UserSessionDto.fromJson(Map<String, Object?> json) => _$UserSessionDtoFromJson(json);
  
  final num id;
  final String name;
  final String emailAddress;
  final String mobileNumber;
  final num accountStatus;
  final num subscriptionId;

  Map<String, Object?> toJson() => _$UserSessionDtoToJson(this);
}
