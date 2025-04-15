// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateUserDto _$CreateUserDtoFromJson(Map<String, dynamic> json) =>
    CreateUserDto(
      name: json['name'] as String,
      emailAddress: json['emailAddress'] as String,
      mobileNumber: json['mobileNumber'] as String,
      password: json['password'] as String,
      passwordResetCode: json['passwordResetCode'] as String,
      accountStatus: json['accountStatus'] as num,
      createdBy: json['createdBy'] as String,
      lastUpdatedBy: json['lastUpdatedBy'] as String,
      subscriptionId: json['subscriptionId'] as num,
    );

Map<String, dynamic> _$CreateUserDtoToJson(CreateUserDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'emailAddress': instance.emailAddress,
      'mobileNumber': instance.mobileNumber,
      'password': instance.password,
      'passwordResetCode': instance.passwordResetCode,
      'accountStatus': instance.accountStatus,
      'createdBy': instance.createdBy,
      'lastUpdatedBy': instance.lastUpdatedBy,
      'subscriptionId': instance.subscriptionId,
    };
