// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_session_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSessionDto _$UserSessionDtoFromJson(Map<String, dynamic> json) =>
    UserSessionDto(
      id: json['id'] as num,
      name: json['name'] as String,
      emailAddress: json['emailAddress'] as String,
      mobileNumber: json['mobileNumber'] as String,
      accountStatus: json['accountStatus'] as num,
      subscriptionId: json['subscriptionId'] as num,
    );

Map<String, dynamic> _$UserSessionDtoToJson(UserSessionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'emailAddress': instance.emailAddress,
      'mobileNumber': instance.mobileNumber,
      'accountStatus': instance.accountStatus,
      'subscriptionId': instance.subscriptionId,
    };
