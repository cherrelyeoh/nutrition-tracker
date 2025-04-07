// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/ai_integration_logs_entity.dart';
import '../models/create_many_ai_integration_logs_entity_dto.dart';
import '../models/get_many_ai_integration_logs_entity_response_dto.dart';

part 'ai_integration_logs_client.g.dart';

@RestApi()
abstract class AIIntegrationLogsClient {
  factory AIIntegrationLogsClient(Dio dio, {String? baseUrl}) = _AIIntegrationLogsClient;

  /// Retrieve many AIIntegrationLogsEntity.
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
  @GET('/rest/AIIntegrationLogs')
  Future<GetManyAIIntegrationLogsEntityResponseDto> getManyBaseAIIntegrationLogsControllerAIIntegrationLogsEntity({
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

  /// Create one AIIntegrationLogsEntity
  @POST('/rest/AIIntegrationLogs')
  Future<AIIntegrationLogsEntity> createOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity({
    @Body() required AIIntegrationLogsEntity body,
  });

  /// Create many AIIntegrationLogsEntity
  @POST('/rest/AIIntegrationLogs/bulk')
  Future<List<AIIntegrationLogsEntity>> createManyBaseAIIntegrationLogsControllerAIIntegrationLogsEntity({
    @Body() required CreateManyAIIntegrationLogsEntityDto body,
  });

  /// Update one AIIntegrationLogsEntity
  @PATCH('/rest/AIIntegrationLogs/{id}')
  Future<AIIntegrationLogsEntity> updateOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity({
    @Path('id') required num id,
    @Body() required AIIntegrationLogsEntity body,
  });

  /// Replace one AIIntegrationLogsEntity
  @PUT('/rest/AIIntegrationLogs/{id}')
  Future<AIIntegrationLogsEntity> replaceOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity({
    @Path('id') required num id,
    @Body() required AIIntegrationLogsEntity body,
  });

  /// Delete one AIIntegrationLogsEntity
  @DELETE('/rest/AIIntegrationLogs/{id}')
  Future<void> deleteOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity({
    @Path('id') required num id,
  });

  /// Retrieve one AIIntegrationLogsEntity.
  ///
  /// [fields] - Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>.
  ///
  /// [join] - Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>.
  ///
  /// [cache] - Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>.
  @GET('/rest/AIIntegrationLogs/{id}')
  Future<AIIntegrationLogsEntity> getOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity({
    @Path('id') required num id,
    @Query('fields') List<String>? fields,
    @Query('join') List<String>? join,
    @Query('cache') int? cache,
  });

  @GET('/rest/AIIntegrationLogs/metadata')
  Future<void> aIIntegrationLogsController();
}
