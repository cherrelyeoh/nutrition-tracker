// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_rest_user_login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostRestUserLoginResponse _$PostRestUserLoginResponseFromJson(
        Map<String, dynamic> json) =>
    PostRestUserLoginResponse(
      user: UserEntity.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostRestUserLoginResponseToJson(
        PostRestUserLoginResponse instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
