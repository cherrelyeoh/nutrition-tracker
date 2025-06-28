// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/create_many_user_sub_meal_log_entity_dto.dart';
import '../models/create_user_sub_meal_log_dto.dart';
import '../models/get_many_user_sub_meal_log_entity_response_dto.dart';
import '../models/update_user_sub_meal_log_dto.dart';
import '../models/user_sub_meal_log_entity.dart';

part 'user_sub_meal_log_client.g.dart';

@RestApi()
abstract class UserSubMealLogClient {
  factory UserSubMealLogClient(Dio dio, {String? baseUrl}) = _UserSubMealLogClient;

  /// Retrieve multiple UserSubMealLogEntities.
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
  @GET('/rest/UserSubMealLog')
  Future<GetManyUserSubMealLogEntityResponseDto> getManyBaseUserSubMealLogControllerUserSubMealLogEntity({
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

  /// Create a single UserSubMealLogEntity
  @POST('/rest/UserSubMealLog')
  Future<UserSubMealLogEntity> createOneBaseUserSubMealLogControllerUserSubMealLogEntity({
    @Body() required CreateUserSubMealLogDto body,
  });

  /// Create multiple UserSubMealLogEntities
  @POST('/rest/UserSubMealLog/bulk')
  Future<List<UserSubMealLogEntity>> createManyBaseUserSubMealLogControllerUserSubMealLogEntity({
    @Body() required CreateManyUserSubMealLogEntityDto body,
  });

  /// Update a single UserSubMealLogEntity
  @PATCH('/rest/UserSubMealLog/{id}')
  Future<UserSubMealLogEntity> updateOneBaseUserSubMealLogControllerUserSubMealLogEntity({
    @Path('id') required num id,
    @Body() required UpdateUserSubMealLogDto body,
  });

  /// Replace a single UserSubMealLogEntity
  @PUT('/rest/UserSubMealLog/{id}')
  Future<UserSubMealLogEntity> replaceOneBaseUserSubMealLogControllerUserSubMealLogEntity({
    @Path('id') required num id,
    @Body() required UserSubMealLogEntity body,
  });

  /// Delete a single UserSubMealLogEntity
  @DELETE('/rest/UserSubMealLog/{id}')
  Future<void> deleteOneBaseUserSubMealLogControllerUserSubMealLogEntity({
    @Path('id') required num id,
  });

  /// Retrieve a single UserSubMealLogEntity.
  ///
  /// [fields] - Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>.
  ///
  /// [join] - Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>.
  ///
  /// [cache] - Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>.
  @GET('/rest/UserSubMealLog/{id}')
  Future<UserSubMealLogEntity> getOneBaseUserSubMealLogControllerUserSubMealLogEntity({
    @Path('id') required num id,
    @Query('fields') List<String>? fields,
    @Query('join') List<String>? join,
    @Query('cache') int? cache,
  });

  @GET('/rest/UserSubMealLog/metadata')
  Future<void> userSubMealLogController();
}
