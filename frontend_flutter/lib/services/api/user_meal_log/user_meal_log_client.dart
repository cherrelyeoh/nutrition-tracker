// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/create_many_user_meal_log_entity_dto.dart';
import '../models/get_many_user_meal_log_entity_response_dto.dart';
import '../models/object1.dart';
import '../models/user_meal_log_entity.dart';

part 'user_meal_log_client.g.dart';

@RestApi()
abstract class UserMealLogClient {
  factory UserMealLogClient(Dio dio, {String? baseUrl}) = _UserMealLogClient;

  /// [body] - Name not received and was auto-generated.
  @POST('/rest/UserMealLog/extractNutrientDetails')
  Future<dynamic> userMealLogControllerExtractNutrientDetails({
    @Body() required Object1 body,
  });

  /// Retrieve multiple UserMealLogEntities.
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
  @GET('/rest/UserMealLog')
  Future<GetManyUserMealLogEntityResponseDto> getManyBaseUserMealLogControllerUserMealLogEntity({
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

  /// Create a single UserMealLogEntity
  @POST('/rest/UserMealLog')
  Future<UserMealLogEntity> createOneBaseUserMealLogControllerUserMealLogEntity({
    @Body() required UserMealLogEntity body,
  });

  /// Create multiple UserMealLogEntities
  @POST('/rest/UserMealLog/bulk')
  Future<List<UserMealLogEntity>> createManyBaseUserMealLogControllerUserMealLogEntity({
    @Body() required CreateManyUserMealLogEntityDto body,
  });

  /// Update a single UserMealLogEntity
  @PATCH('/rest/UserMealLog/{id}')
  Future<UserMealLogEntity> updateOneBaseUserMealLogControllerUserMealLogEntity({
    @Path('id') required num id,
    @Body() required UserMealLogEntity body,
  });

  /// Replace a single UserMealLogEntity
  @PUT('/rest/UserMealLog/{id}')
  Future<UserMealLogEntity> replaceOneBaseUserMealLogControllerUserMealLogEntity({
    @Path('id') required num id,
    @Body() required UserMealLogEntity body,
  });

  /// Delete a single UserMealLogEntity
  @DELETE('/rest/UserMealLog/{id}')
  Future<void> deleteOneBaseUserMealLogControllerUserMealLogEntity({
    @Path('id') required num id,
  });

  /// Retrieve a single UserMealLogEntity.
  ///
  /// [fields] - Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>.
  ///
  /// [join] - Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>.
  ///
  /// [cache] - Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>.
  @GET('/rest/UserMealLog/{id}')
  Future<UserMealLogEntity> getOneBaseUserMealLogControllerUserMealLogEntity({
    @Path('id') required num id,
    @Query('fields') List<String>? fields,
    @Query('join') List<String>? join,
    @Query('cache') int? cache,
  });

  @GET('/rest/UserMealLog/metadata')
  Future<void> userMealLogController();
}
