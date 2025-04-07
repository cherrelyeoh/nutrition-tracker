// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/create_many_user_meal_questions_entity_dto.dart';
import '../models/get_many_user_meal_questions_entity_response_dto.dart';
import '../models/user_meal_questions_entity.dart';

part 'user_meal_questions_client.g.dart';

@RestApi()
abstract class UserMealQuestionsClient {
  factory UserMealQuestionsClient(Dio dio, {String? baseUrl}) = _UserMealQuestionsClient;

  /// Retrieve many UserMealQuestionsEntity.
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
  @GET('/rest/UserMealQuestions')
  Future<GetManyUserMealQuestionsEntityResponseDto> getManyBaseUserMealQuestionsControllerUserMealQuestionsEntity({
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

  /// Create one UserMealQuestionsEntity
  @POST('/rest/UserMealQuestions')
  Future<UserMealQuestionsEntity> createOneBaseUserMealQuestionsControllerUserMealQuestionsEntity({
    @Body() required UserMealQuestionsEntity body,
  });

  /// Create many UserMealQuestionsEntity
  @POST('/rest/UserMealQuestions/bulk')
  Future<List<UserMealQuestionsEntity>> createManyBaseUserMealQuestionsControllerUserMealQuestionsEntity({
    @Body() required CreateManyUserMealQuestionsEntityDto body,
  });

  /// Update one UserMealQuestionsEntity
  @PATCH('/rest/UserMealQuestions/{id}')
  Future<UserMealQuestionsEntity> updateOneBaseUserMealQuestionsControllerUserMealQuestionsEntity({
    @Path('id') required num id,
    @Body() required UserMealQuestionsEntity body,
  });

  /// Replace one UserMealQuestionsEntity
  @PUT('/rest/UserMealQuestions/{id}')
  Future<UserMealQuestionsEntity> replaceOneBaseUserMealQuestionsControllerUserMealQuestionsEntity({
    @Path('id') required num id,
    @Body() required UserMealQuestionsEntity body,
  });

  /// Delete one UserMealQuestionsEntity
  @DELETE('/rest/UserMealQuestions/{id}')
  Future<void> deleteOneBaseUserMealQuestionsControllerUserMealQuestionsEntity({
    @Path('id') required num id,
  });

  /// Retrieve one UserMealQuestionsEntity.
  ///
  /// [fields] - Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>.
  ///
  /// [join] - Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>.
  ///
  /// [cache] - Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>.
  @GET('/rest/UserMealQuestions/{id}')
  Future<UserMealQuestionsEntity> getOneBaseUserMealQuestionsControllerUserMealQuestionsEntity({
    @Path('id') required num id,
    @Query('fields') List<String>? fields,
    @Query('join') List<String>? join,
    @Query('cache') int? cache,
  });

  @GET('/rest/UserMealQuestions/metadata')
  Future<void> userMealQuestionsController();
}
