// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/ai_prompt_entity.dart';
import '../models/create_many_ai_prompt_entity_dto.dart';
import '../models/get_many_ai_prompt_entity_response_dto.dart';
import '../models/object0.dart';

part 'ai_prompt_client.g.dart';

@RestApi()
abstract class AIPromptClient {
  factory AIPromptClient(Dio dio, {String? baseUrl}) = _AIPromptClient;

  /// [body] - Name not received and was auto-generated.
  @POST('/rest/AIPrompt/testFunction')
  Future<void> aIPromptControllerTestFunction({
    @Body() required Object0 body,
  });

  /// Retrieve many AIPromptEntity.
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
  @GET('/rest/AIPrompt')
  Future<GetManyAIPromptEntityResponseDto> getManyBaseAIPromptControllerAIPromptEntity({
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

  /// Create one AIPromptEntity
  @POST('/rest/AIPrompt')
  Future<AIPromptEntity> createOneBaseAIPromptControllerAIPromptEntity({
    @Body() required AIPromptEntity body,
  });

  /// Create many AIPromptEntity
  @POST('/rest/AIPrompt/bulk')
  Future<List<AIPromptEntity>> createManyBaseAIPromptControllerAIPromptEntity({
    @Body() required CreateManyAIPromptEntityDto body,
  });

  /// Update one AIPromptEntity
  @PATCH('/rest/AIPrompt/{id}')
  Future<AIPromptEntity> updateOneBaseAIPromptControllerAIPromptEntity({
    @Path('id') required num id,
    @Body() required AIPromptEntity body,
  });

  /// Replace one AIPromptEntity
  @PUT('/rest/AIPrompt/{id}')
  Future<AIPromptEntity> replaceOneBaseAIPromptControllerAIPromptEntity({
    @Path('id') required num id,
    @Body() required AIPromptEntity body,
  });

  /// Delete one AIPromptEntity
  @DELETE('/rest/AIPrompt/{id}')
  Future<void> deleteOneBaseAIPromptControllerAIPromptEntity({
    @Path('id') required num id,
  });

  /// Retrieve one AIPromptEntity.
  ///
  /// [fields] - Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>.
  ///
  /// [join] - Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>.
  ///
  /// [cache] - Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>.
  @GET('/rest/AIPrompt/{id}')
  Future<AIPromptEntity> getOneBaseAIPromptControllerAIPromptEntity({
    @Path('id') required num id,
    @Query('fields') List<String>? fields,
    @Query('join') List<String>? join,
    @Query('cache') int? cache,
  });

  @GET('/rest/AIPrompt/metadata')
  Future<void> aIPromptController();
}
