// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_entity.dart';

part 'post_rest_user_login_response.g.dart';

@JsonSerializable()
class PostRestUserLoginResponse {
  const PostRestUserLoginResponse({
    required this.user,
  });
  
  factory PostRestUserLoginResponse.fromJson(Map<String, Object?> json) => _$PostRestUserLoginResponseFromJson(json);
  
  final UserEntity user;

  Map<String, Object?> toJson() => _$PostRestUserLoginResponseToJson(this);
}
