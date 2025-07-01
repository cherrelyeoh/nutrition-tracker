// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/create_many_user_entity_dto.dart';
import '../models/create_user_dto.dart';
import '../models/get_many_user_entity_response_dto.dart';
import '../models/login_dto.dart';
import '../models/login_response_dto.dart';
import '../models/sign_up_dto.dart';
import '../models/update_user_dto.dart';
import '../models/user_entity.dart';

part 'authentication_client.g.dart';

@RestApi()
abstract class AuthenticationClient {
  factory AuthenticationClient(Dio dio, {String? baseUrl}) = _AuthenticationClient;

  /// Register a new user
  @POST('/rest/User/signup')
  Future<UserEntity> userControllerSignUp({
    @Body() required SignUpDto body,
  });

  /// Authenticate user
  @POST('/rest/User/login')
  Future<LoginResponseDto> userControllerLogin({
    @Body() required LoginDto body,
  });

  /// Retrieve multiple UserEntities.
  ///
  /// [fields] - Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>.
  ///
  /// [s] - Adds search condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#search" target="_blank">Docs</a>.
  ///
  /// [filter] - Adds filter condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#filter" target="_blank">Docs</a>.
  ///
  /// [or] - Adds OR condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#or" target="_blank">Docs</a>.
  ///
  /// [sort] - Adds sort by field. <a href="https://github.com/nestjsx/crud/wiki/Requests#sort" target="_blank">Docs</a>.
  ///
  /// [join] - Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>.
  ///
  /// [limit] - Limit amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#limit" target="_blank">Docs</a>.
  ///
  /// [offset] - Offset amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#offset" target="_blank">Docs</a>.
  ///
  /// [page] - Page portion of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#page" target="_blank">Docs</a>.
  ///
  /// [cache] - Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>.
  @GET('/rest/User')
  Future<GetManyUserEntityResponseDto> getManyBaseUserControllerUserEntity({
    @Query('fields') List<String>? fields,
    @Query('s') String? s,
    @Query('filter') List<String>? filter,
    @Query('or') List<String>? or,
    @Query('sort') List<String>? sort,
    @Query('join') List<String>? join,
    @Query('limit') int? limit,
    @Query('offset') int? offset,
    @Query('page') int? page,
    @Query('cache') int? cache,
  });

  /// Create a single UserEntity
  @POST('/rest/User')
  Future<UserEntity> createOneBaseUserControllerUserEntity({
    @Body() required CreateUserDto body,
  });

  /// Create multiple UserEntities
  @POST('/rest/User/bulk')
  Future<List<UserEntity>> createManyBaseUserControllerUserEntity({
    @Body() required CreateManyUserEntityDto body,
  });

  /// Update a single UserEntity
  @PATCH('/rest/User/{id}')
  Future<UserEntity> updateOneBaseUserControllerUserEntity({
    @Path('id') required num id,
    @Body() required UpdateUserDto body,
  });

  /// Replace a single UserEntity
  @PUT('/rest/User/{id}')
  Future<UserEntity> replaceOneBaseUserControllerUserEntity({
    @Path('id') required num id,
    @Body() required UserEntity body,
  });

  /// Delete a single UserEntity
  @DELETE('/rest/User/{id}')
  Future<void> deleteOneBaseUserControllerUserEntity({
    @Path('id') required num id,
  });

  /// Retrieve a single UserEntity.
  ///
  /// [fields] - Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>.
  ///
  /// [join] - Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>.
  ///
  /// [cache] - Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>.
  @GET('/rest/User/{id}')
  Future<UserEntity> getOneBaseUserControllerUserEntity({
    @Path('id') required num id,
    @Query('fields') List<String>? fields,
    @Query('join') List<String>? join,
    @Query('cache') int? cache,
  });

  @GET('/rest/User/metadata')
  Future<void> userController();
}
