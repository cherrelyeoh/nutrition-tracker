// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:json_annotation/json_annotation.dart' as json;
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;

part 'bigbum.swagger.chopper.dart';
part 'bigbum.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Bigbum extends ChopperService {
  static Bigbum create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    ErrorConverter? errorConverter,
    Converter? converter,
    Uri? baseUrl,
    List<Interceptor>? interceptors,
  }) {
    if (client != null) {
      return _$Bigbum(client);
    }

    final newClient = ChopperClient(
      services: [_$Bigbum()],
      converter: converter ?? $JsonSerializableConverter(),
      interceptors: interceptors ?? [],
      client: httpClient,
      authenticator: authenticator,
      errorConverter: errorConverter,
      baseUrl: baseUrl ?? Uri.parse('http://'),
    );
    return _$Bigbum(newClient);
  }

  ///
  Future<chopper.Response<String>> AppController_getHello() {
    return _AppController_getHello();
  }

  ///
  @GET(path: '/')
  Future<chopper.Response<String>> _AppController_getHello();

  ///
  Future<chopper.Response> AIPromptController_testFunction({
    required RestAIPromptTestFunctionPost$RequestBody? body,
  }) {
    return _AIPromptController_testFunction(body: body);
  }

  ///
  @POST(path: '/rest/AIPrompt/testFunction', optionalBody: true)
  Future<chopper.Response> _AIPromptController_testFunction({
    @Body() required RestAIPromptTestFunctionPost$RequestBody? body,
  });

  ///Retrieve multiple AIPromptEntities
  ///@param fields Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>
  ///@param s Adds search condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#search" target="_blank">Docs</a>
  ///@param filter Adds filter condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#filter" target="_blank">Docs</a>
  ///@param or Adds OR condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#or" target="_blank">Docs</a>
  ///@param sort Adds sort by field. <a href="https://github.com/nestjsx/crud/wiki/Requests#sort" target="_blank">Docs</a>
  ///@param join Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>
  ///@param limit Limit amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#limit" target="_blank">Docs</a>
  ///@param offset Offset amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#offset" target="_blank">Docs</a>
  ///@param page Page portion of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#page" target="_blank">Docs</a>
  ///@param cache Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>
  Future<chopper.Response<GetManyAIPromptEntityResponseDto>>
  getManyBaseAIPromptControllerAIPromptEntity({
    List<String>? fields,
    String? s,
    List<String>? filter,
    List<String>? or,
    List<String>? sort,
    List<String>? join,
    int? limit,
    int? offset,
    int? page,
    int? cache,
  }) {
    generatedMapping.putIfAbsent(
      GetManyAIPromptEntityResponseDto,
      () => GetManyAIPromptEntityResponseDto.fromJsonFactory,
    );

    return _getManyBaseAIPromptControllerAIPromptEntity(
      fields: fields,
      s: s,
      filter: filter,
      or: or,
      sort: sort,
      join: join,
      limit: limit,
      offset: offset,
      page: page,
      cache: cache,
    );
  }

  ///Retrieve multiple AIPromptEntities
  ///@param fields Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>
  ///@param s Adds search condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#search" target="_blank">Docs</a>
  ///@param filter Adds filter condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#filter" target="_blank">Docs</a>
  ///@param or Adds OR condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#or" target="_blank">Docs</a>
  ///@param sort Adds sort by field. <a href="https://github.com/nestjsx/crud/wiki/Requests#sort" target="_blank">Docs</a>
  ///@param join Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>
  ///@param limit Limit amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#limit" target="_blank">Docs</a>
  ///@param offset Offset amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#offset" target="_blank">Docs</a>
  ///@param page Page portion of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#page" target="_blank">Docs</a>
  ///@param cache Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>
  @GET(path: '/rest/AIPrompt')
  Future<chopper.Response<GetManyAIPromptEntityResponseDto>>
  _getManyBaseAIPromptControllerAIPromptEntity({
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

  ///Create a single AIPromptEntity
  Future<chopper.Response<AIPromptEntity>>
  createOneBaseAIPromptControllerAIPromptEntity({
    required AIPromptEntity? body,
  }) {
    generatedMapping.putIfAbsent(
      AIPromptEntity,
      () => AIPromptEntity.fromJsonFactory,
    );

    return _createOneBaseAIPromptControllerAIPromptEntity(body: body);
  }

  ///Create a single AIPromptEntity
  @POST(path: '/rest/AIPrompt', optionalBody: true)
  Future<chopper.Response<AIPromptEntity>>
  _createOneBaseAIPromptControllerAIPromptEntity({
    @Body() required AIPromptEntity? body,
  });

  ///Create multiple AIPromptEntities
  Future<chopper.Response<List<AIPromptEntity>>>
  createManyBaseAIPromptControllerAIPromptEntity({
    required CreateManyAIPromptEntityDto? body,
  }) {
    generatedMapping.putIfAbsent(
      AIPromptEntity,
      () => AIPromptEntity.fromJsonFactory,
    );

    return _createManyBaseAIPromptControllerAIPromptEntity(body: body);
  }

  ///Create multiple AIPromptEntities
  @POST(path: '/rest/AIPrompt/bulk', optionalBody: true)
  Future<chopper.Response<List<AIPromptEntity>>>
  _createManyBaseAIPromptControllerAIPromptEntity({
    @Body() required CreateManyAIPromptEntityDto? body,
  });

  ///Update a single AIPromptEntity
  ///@param id
  Future<chopper.Response<AIPromptEntity>>
  updateOneBaseAIPromptControllerAIPromptEntity({
    required num? id,
    required AIPromptEntity? body,
  }) {
    generatedMapping.putIfAbsent(
      AIPromptEntity,
      () => AIPromptEntity.fromJsonFactory,
    );

    return _updateOneBaseAIPromptControllerAIPromptEntity(id: id, body: body);
  }

  ///Update a single AIPromptEntity
  ///@param id
  @PATCH(path: '/rest/AIPrompt/{id}', optionalBody: true)
  Future<chopper.Response<AIPromptEntity>>
  _updateOneBaseAIPromptControllerAIPromptEntity({
    @Path('id') required num? id,
    @Body() required AIPromptEntity? body,
  });

  ///Replace a single AIPromptEntity
  ///@param id
  Future<chopper.Response<AIPromptEntity>>
  replaceOneBaseAIPromptControllerAIPromptEntity({
    required num? id,
    required AIPromptEntity? body,
  }) {
    generatedMapping.putIfAbsent(
      AIPromptEntity,
      () => AIPromptEntity.fromJsonFactory,
    );

    return _replaceOneBaseAIPromptControllerAIPromptEntity(id: id, body: body);
  }

  ///Replace a single AIPromptEntity
  ///@param id
  @PUT(path: '/rest/AIPrompt/{id}', optionalBody: true)
  Future<chopper.Response<AIPromptEntity>>
  _replaceOneBaseAIPromptControllerAIPromptEntity({
    @Path('id') required num? id,
    @Body() required AIPromptEntity? body,
  });

  ///Delete a single AIPromptEntity
  ///@param id
  Future<chopper.Response> deleteOneBaseAIPromptControllerAIPromptEntity({
    required num? id,
  }) {
    return _deleteOneBaseAIPromptControllerAIPromptEntity(id: id);
  }

  ///Delete a single AIPromptEntity
  ///@param id
  @DELETE(path: '/rest/AIPrompt/{id}')
  Future<chopper.Response> _deleteOneBaseAIPromptControllerAIPromptEntity({
    @Path('id') required num? id,
  });

  ///Retrieve a single AIPromptEntity
  ///@param id
  ///@param fields Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>
  ///@param join Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>
  ///@param cache Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>
  Future<chopper.Response<AIPromptEntity>>
  getOneBaseAIPromptControllerAIPromptEntity({
    required num? id,
    List<String>? fields,
    List<String>? join,
    int? cache,
  }) {
    generatedMapping.putIfAbsent(
      AIPromptEntity,
      () => AIPromptEntity.fromJsonFactory,
    );

    return _getOneBaseAIPromptControllerAIPromptEntity(
      id: id,
      fields: fields,
      join: join,
      cache: cache,
    );
  }

  ///Retrieve a single AIPromptEntity
  ///@param id
  ///@param fields Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>
  ///@param join Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>
  ///@param cache Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>
  @GET(path: '/rest/AIPrompt/{id}')
  Future<chopper.Response<AIPromptEntity>>
  _getOneBaseAIPromptControllerAIPromptEntity({
    @Path('id') required num? id,
    @Query('fields') List<String>? fields,
    @Query('join') List<String>? join,
    @Query('cache') int? cache,
  });

  ///
  Future<chopper.Response> AIPromptController_() {
    return _AIPromptController_();
  }

  ///
  @GET(path: '/rest/AIPrompt/metadata')
  Future<chopper.Response> _AIPromptController_();

  ///
  Future<chopper.Response> UserMealLogController_extractNutrientDetails({
    required UserMealInputDto? body,
  }) {
    return _UserMealLogController_extractNutrientDetails(body: body);
  }

  ///
  @POST(path: '/rest/UserMealLog/extractNutrientDetails', optionalBody: true)
  Future<chopper.Response> _UserMealLogController_extractNutrientDetails({
    @Body() required UserMealInputDto? body,
  });

  ///
  ///@param userId
  ///@param startDate
  ///@param endDate
  Future<chopper.Response<List<UserMealLogEntity>>>
  UserMealLogController_getUserMeals({
    required num? userId,
    required String? startDate,
    required String? endDate,
  }) {
    generatedMapping.putIfAbsent(
      UserMealLogEntity,
      () => UserMealLogEntity.fromJsonFactory,
    );

    return _UserMealLogController_getUserMeals(
      userId: userId,
      startDate: startDate,
      endDate: endDate,
    );
  }

  ///
  ///@param userId
  ///@param startDate
  ///@param endDate
  @GET(path: '/rest/UserMealLog/mealsByUser/{userId}')
  Future<chopper.Response<List<UserMealLogEntity>>>
  _UserMealLogController_getUserMeals({
    @Path('userId') required num? userId,
    @Query('startDate') required String? startDate,
    @Query('endDate') required String? endDate,
  });

  ///Retrieve multiple UserMealLogEntities
  ///@param fields Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>
  ///@param s Adds search condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#search" target="_blank">Docs</a>
  ///@param filter Adds filter condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#filter" target="_blank">Docs</a>
  ///@param or Adds OR condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#or" target="_blank">Docs</a>
  ///@param sort Adds sort by field. <a href="https://github.com/nestjsx/crud/wiki/Requests#sort" target="_blank">Docs</a>
  ///@param join Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>
  ///@param limit Limit amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#limit" target="_blank">Docs</a>
  ///@param offset Offset amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#offset" target="_blank">Docs</a>
  ///@param page Page portion of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#page" target="_blank">Docs</a>
  ///@param cache Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>
  Future<chopper.Response<GetManyUserMealLogEntityResponseDto>>
  getManyBaseUserMealLogControllerUserMealLogEntity({
    List<String>? fields,
    String? s,
    List<String>? filter,
    List<String>? or,
    List<String>? sort,
    List<String>? join,
    int? limit,
    int? offset,
    int? page,
    int? cache,
  }) {
    generatedMapping.putIfAbsent(
      GetManyUserMealLogEntityResponseDto,
      () => GetManyUserMealLogEntityResponseDto.fromJsonFactory,
    );

    return _getManyBaseUserMealLogControllerUserMealLogEntity(
      fields: fields,
      s: s,
      filter: filter,
      or: or,
      sort: sort,
      join: join,
      limit: limit,
      offset: offset,
      page: page,
      cache: cache,
    );
  }

  ///Retrieve multiple UserMealLogEntities
  ///@param fields Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>
  ///@param s Adds search condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#search" target="_blank">Docs</a>
  ///@param filter Adds filter condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#filter" target="_blank">Docs</a>
  ///@param or Adds OR condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#or" target="_blank">Docs</a>
  ///@param sort Adds sort by field. <a href="https://github.com/nestjsx/crud/wiki/Requests#sort" target="_blank">Docs</a>
  ///@param join Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>
  ///@param limit Limit amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#limit" target="_blank">Docs</a>
  ///@param offset Offset amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#offset" target="_blank">Docs</a>
  ///@param page Page portion of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#page" target="_blank">Docs</a>
  ///@param cache Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>
  @GET(path: '/rest/UserMealLog')
  Future<chopper.Response<GetManyUserMealLogEntityResponseDto>>
  _getManyBaseUserMealLogControllerUserMealLogEntity({
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

  ///Create a single UserMealLogEntity
  Future<chopper.Response<UserMealLogEntity>>
  createOneBaseUserMealLogControllerUserMealLogEntity({
    required UserMealLogEntity? body,
  }) {
    generatedMapping.putIfAbsent(
      UserMealLogEntity,
      () => UserMealLogEntity.fromJsonFactory,
    );

    return _createOneBaseUserMealLogControllerUserMealLogEntity(body: body);
  }

  ///Create a single UserMealLogEntity
  @POST(path: '/rest/UserMealLog', optionalBody: true)
  Future<chopper.Response<UserMealLogEntity>>
  _createOneBaseUserMealLogControllerUserMealLogEntity({
    @Body() required UserMealLogEntity? body,
  });

  ///Create multiple UserMealLogEntities
  Future<chopper.Response<List<UserMealLogEntity>>>
  createManyBaseUserMealLogControllerUserMealLogEntity({
    required CreateManyUserMealLogEntityDto? body,
  }) {
    generatedMapping.putIfAbsent(
      UserMealLogEntity,
      () => UserMealLogEntity.fromJsonFactory,
    );

    return _createManyBaseUserMealLogControllerUserMealLogEntity(body: body);
  }

  ///Create multiple UserMealLogEntities
  @POST(path: '/rest/UserMealLog/bulk', optionalBody: true)
  Future<chopper.Response<List<UserMealLogEntity>>>
  _createManyBaseUserMealLogControllerUserMealLogEntity({
    @Body() required CreateManyUserMealLogEntityDto? body,
  });

  ///Update a single UserMealLogEntity
  ///@param id
  Future<chopper.Response<UserMealLogEntity>>
  updateOneBaseUserMealLogControllerUserMealLogEntity({
    required num? id,
    required UserMealLogEntity? body,
  }) {
    generatedMapping.putIfAbsent(
      UserMealLogEntity,
      () => UserMealLogEntity.fromJsonFactory,
    );

    return _updateOneBaseUserMealLogControllerUserMealLogEntity(
      id: id,
      body: body,
    );
  }

  ///Update a single UserMealLogEntity
  ///@param id
  @PATCH(path: '/rest/UserMealLog/{id}', optionalBody: true)
  Future<chopper.Response<UserMealLogEntity>>
  _updateOneBaseUserMealLogControllerUserMealLogEntity({
    @Path('id') required num? id,
    @Body() required UserMealLogEntity? body,
  });

  ///Replace a single UserMealLogEntity
  ///@param id
  Future<chopper.Response<UserMealLogEntity>>
  replaceOneBaseUserMealLogControllerUserMealLogEntity({
    required num? id,
    required UserMealLogEntity? body,
  }) {
    generatedMapping.putIfAbsent(
      UserMealLogEntity,
      () => UserMealLogEntity.fromJsonFactory,
    );

    return _replaceOneBaseUserMealLogControllerUserMealLogEntity(
      id: id,
      body: body,
    );
  }

  ///Replace a single UserMealLogEntity
  ///@param id
  @PUT(path: '/rest/UserMealLog/{id}', optionalBody: true)
  Future<chopper.Response<UserMealLogEntity>>
  _replaceOneBaseUserMealLogControllerUserMealLogEntity({
    @Path('id') required num? id,
    @Body() required UserMealLogEntity? body,
  });

  ///Delete a single UserMealLogEntity
  ///@param id
  Future<chopper.Response> deleteOneBaseUserMealLogControllerUserMealLogEntity({
    required num? id,
  }) {
    return _deleteOneBaseUserMealLogControllerUserMealLogEntity(id: id);
  }

  ///Delete a single UserMealLogEntity
  ///@param id
  @DELETE(path: '/rest/UserMealLog/{id}')
  Future<chopper.Response>
  _deleteOneBaseUserMealLogControllerUserMealLogEntity({
    @Path('id') required num? id,
  });

  ///Retrieve a single UserMealLogEntity
  ///@param id
  ///@param fields Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>
  ///@param join Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>
  ///@param cache Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>
  Future<chopper.Response<UserMealLogEntity>>
  getOneBaseUserMealLogControllerUserMealLogEntity({
    required num? id,
    List<String>? fields,
    List<String>? join,
    int? cache,
  }) {
    generatedMapping.putIfAbsent(
      UserMealLogEntity,
      () => UserMealLogEntity.fromJsonFactory,
    );

    return _getOneBaseUserMealLogControllerUserMealLogEntity(
      id: id,
      fields: fields,
      join: join,
      cache: cache,
    );
  }

  ///Retrieve a single UserMealLogEntity
  ///@param id
  ///@param fields Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>
  ///@param join Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>
  ///@param cache Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>
  @GET(path: '/rest/UserMealLog/{id}')
  Future<chopper.Response<UserMealLogEntity>>
  _getOneBaseUserMealLogControllerUserMealLogEntity({
    @Path('id') required num? id,
    @Query('fields') List<String>? fields,
    @Query('join') List<String>? join,
    @Query('cache') int? cache,
  });

  ///
  Future<chopper.Response> UserMealLogController_() {
    return _UserMealLogController_();
  }

  ///
  @GET(path: '/rest/UserMealLog/metadata')
  Future<chopper.Response> _UserMealLogController_();

  ///Retrieve multiple AIIntegrationLogsEntities
  ///@param fields Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>
  ///@param s Adds search condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#search" target="_blank">Docs</a>
  ///@param filter Adds filter condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#filter" target="_blank">Docs</a>
  ///@param or Adds OR condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#or" target="_blank">Docs</a>
  ///@param sort Adds sort by field. <a href="https://github.com/nestjsx/crud/wiki/Requests#sort" target="_blank">Docs</a>
  ///@param join Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>
  ///@param limit Limit amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#limit" target="_blank">Docs</a>
  ///@param offset Offset amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#offset" target="_blank">Docs</a>
  ///@param page Page portion of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#page" target="_blank">Docs</a>
  ///@param cache Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>
  Future<chopper.Response<GetManyAIIntegrationLogsEntityResponseDto>>
  getManyBaseAIIntegrationLogsControllerAIIntegrationLogsEntity({
    List<String>? fields,
    String? s,
    List<String>? filter,
    List<String>? or,
    List<String>? sort,
    List<String>? join,
    int? limit,
    int? offset,
    int? page,
    int? cache,
  }) {
    generatedMapping.putIfAbsent(
      GetManyAIIntegrationLogsEntityResponseDto,
      () => GetManyAIIntegrationLogsEntityResponseDto.fromJsonFactory,
    );

    return _getManyBaseAIIntegrationLogsControllerAIIntegrationLogsEntity(
      fields: fields,
      s: s,
      filter: filter,
      or: or,
      sort: sort,
      join: join,
      limit: limit,
      offset: offset,
      page: page,
      cache: cache,
    );
  }

  ///Retrieve multiple AIIntegrationLogsEntities
  ///@param fields Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>
  ///@param s Adds search condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#search" target="_blank">Docs</a>
  ///@param filter Adds filter condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#filter" target="_blank">Docs</a>
  ///@param or Adds OR condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#or" target="_blank">Docs</a>
  ///@param sort Adds sort by field. <a href="https://github.com/nestjsx/crud/wiki/Requests#sort" target="_blank">Docs</a>
  ///@param join Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>
  ///@param limit Limit amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#limit" target="_blank">Docs</a>
  ///@param offset Offset amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#offset" target="_blank">Docs</a>
  ///@param page Page portion of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#page" target="_blank">Docs</a>
  ///@param cache Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>
  @GET(path: '/rest/AIIntegrationLogs')
  Future<chopper.Response<GetManyAIIntegrationLogsEntityResponseDto>>
  _getManyBaseAIIntegrationLogsControllerAIIntegrationLogsEntity({
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

  ///Create a single AIIntegrationLogsEntity
  Future<chopper.Response<AIIntegrationLogsEntity>>
  createOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity({
    required CreateAIIntegrationLogDto? body,
  }) {
    generatedMapping.putIfAbsent(
      AIIntegrationLogsEntity,
      () => AIIntegrationLogsEntity.fromJsonFactory,
    );

    return _createOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity(
      body: body,
    );
  }

  ///Create a single AIIntegrationLogsEntity
  @POST(path: '/rest/AIIntegrationLogs', optionalBody: true)
  Future<chopper.Response<AIIntegrationLogsEntity>>
  _createOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity({
    @Body() required CreateAIIntegrationLogDto? body,
  });

  ///Create multiple AIIntegrationLogsEntities
  Future<chopper.Response<List<AIIntegrationLogsEntity>>>
  createManyBaseAIIntegrationLogsControllerAIIntegrationLogsEntity({
    required CreateManyAIIntegrationLogsEntityDto? body,
  }) {
    generatedMapping.putIfAbsent(
      AIIntegrationLogsEntity,
      () => AIIntegrationLogsEntity.fromJsonFactory,
    );

    return _createManyBaseAIIntegrationLogsControllerAIIntegrationLogsEntity(
      body: body,
    );
  }

  ///Create multiple AIIntegrationLogsEntities
  @POST(path: '/rest/AIIntegrationLogs/bulk', optionalBody: true)
  Future<chopper.Response<List<AIIntegrationLogsEntity>>>
  _createManyBaseAIIntegrationLogsControllerAIIntegrationLogsEntity({
    @Body() required CreateManyAIIntegrationLogsEntityDto? body,
  });

  ///Update a single AIIntegrationLogsEntity
  ///@param id
  Future<chopper.Response<AIIntegrationLogsEntity>>
  updateOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity({
    required num? id,
    required UpdateAIIntegrationLogDto? body,
  }) {
    generatedMapping.putIfAbsent(
      AIIntegrationLogsEntity,
      () => AIIntegrationLogsEntity.fromJsonFactory,
    );

    return _updateOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity(
      id: id,
      body: body,
    );
  }

  ///Update a single AIIntegrationLogsEntity
  ///@param id
  @PATCH(path: '/rest/AIIntegrationLogs/{id}', optionalBody: true)
  Future<chopper.Response<AIIntegrationLogsEntity>>
  _updateOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity({
    @Path('id') required num? id,
    @Body() required UpdateAIIntegrationLogDto? body,
  });

  ///Replace a single AIIntegrationLogsEntity
  ///@param id
  Future<chopper.Response<AIIntegrationLogsEntity>>
  replaceOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity({
    required num? id,
    required AIIntegrationLogsEntity? body,
  }) {
    generatedMapping.putIfAbsent(
      AIIntegrationLogsEntity,
      () => AIIntegrationLogsEntity.fromJsonFactory,
    );

    return _replaceOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity(
      id: id,
      body: body,
    );
  }

  ///Replace a single AIIntegrationLogsEntity
  ///@param id
  @PUT(path: '/rest/AIIntegrationLogs/{id}', optionalBody: true)
  Future<chopper.Response<AIIntegrationLogsEntity>>
  _replaceOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity({
    @Path('id') required num? id,
    @Body() required AIIntegrationLogsEntity? body,
  });

  ///Delete a single AIIntegrationLogsEntity
  ///@param id
  Future<chopper.Response>
  deleteOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity({
    required num? id,
  }) {
    return _deleteOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity(
      id: id,
    );
  }

  ///Delete a single AIIntegrationLogsEntity
  ///@param id
  @DELETE(path: '/rest/AIIntegrationLogs/{id}')
  Future<chopper.Response>
  _deleteOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity({
    @Path('id') required num? id,
  });

  ///Retrieve a single AIIntegrationLogsEntity
  ///@param id
  ///@param fields Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>
  ///@param join Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>
  ///@param cache Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>
  Future<chopper.Response<AIIntegrationLogsEntity>>
  getOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity({
    required num? id,
    List<String>? fields,
    List<String>? join,
    int? cache,
  }) {
    generatedMapping.putIfAbsent(
      AIIntegrationLogsEntity,
      () => AIIntegrationLogsEntity.fromJsonFactory,
    );

    return _getOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity(
      id: id,
      fields: fields,
      join: join,
      cache: cache,
    );
  }

  ///Retrieve a single AIIntegrationLogsEntity
  ///@param id
  ///@param fields Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>
  ///@param join Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>
  ///@param cache Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>
  @GET(path: '/rest/AIIntegrationLogs/{id}')
  Future<chopper.Response<AIIntegrationLogsEntity>>
  _getOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity({
    @Path('id') required num? id,
    @Query('fields') List<String>? fields,
    @Query('join') List<String>? join,
    @Query('cache') int? cache,
  });

  ///
  Future<chopper.Response> AIIntegrationLogsController_() {
    return _AIIntegrationLogsController_();
  }

  ///
  @GET(path: '/rest/AIIntegrationLogs/metadata')
  Future<chopper.Response> _AIIntegrationLogsController_();

  ///Register a new user
  Future<chopper.Response<UserEntity>> UserController_signUp({
    required SignUpDto? body,
  }) {
    generatedMapping.putIfAbsent(UserEntity, () => UserEntity.fromJsonFactory);

    return _UserController_signUp(body: body);
  }

  ///Register a new user
  @POST(path: '/rest/User/signup', optionalBody: true)
  Future<chopper.Response<UserEntity>> _UserController_signUp({
    @Body() required SignUpDto? body,
  });

  ///Authenticate user
  Future<chopper.Response<LoginResponseDto>> UserController_login({
    required LoginDto? body,
  }) {
    generatedMapping.putIfAbsent(
      LoginResponseDto,
      () => LoginResponseDto.fromJsonFactory,
    );

    return _UserController_login(body: body);
  }

  ///Authenticate user
  @POST(path: '/rest/User/login', optionalBody: true)
  Future<chopper.Response<LoginResponseDto>> _UserController_login({
    @Body() required LoginDto? body,
  });

  ///Create a single UserEntity
  Future<chopper.Response<UserEntity>> createOneBaseUserControllerUserEntity({
    required CreateUserDto? body,
  }) {
    generatedMapping.putIfAbsent(UserEntity, () => UserEntity.fromJsonFactory);

    return _createOneBaseUserControllerUserEntity(body: body);
  }

  ///Create a single UserEntity
  @POST(path: '/rest/User', optionalBody: true)
  Future<chopper.Response<UserEntity>> _createOneBaseUserControllerUserEntity({
    @Body() required CreateUserDto? body,
  });

  ///Retrieve multiple UserEntities
  ///@param fields Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>
  ///@param s Adds search condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#search" target="_blank">Docs</a>
  ///@param filter Adds filter condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#filter" target="_blank">Docs</a>
  ///@param or Adds OR condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#or" target="_blank">Docs</a>
  ///@param sort Adds sort by field. <a href="https://github.com/nestjsx/crud/wiki/Requests#sort" target="_blank">Docs</a>
  ///@param join Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>
  ///@param limit Limit amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#limit" target="_blank">Docs</a>
  ///@param offset Offset amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#offset" target="_blank">Docs</a>
  ///@param page Page portion of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#page" target="_blank">Docs</a>
  ///@param cache Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>
  Future<chopper.Response<GetManyUserEntityResponseDto>>
  getManyBaseUserControllerUserEntity({
    List<String>? fields,
    String? s,
    List<String>? filter,
    List<String>? or,
    List<String>? sort,
    List<String>? join,
    int? limit,
    int? offset,
    int? page,
    int? cache,
  }) {
    generatedMapping.putIfAbsent(
      GetManyUserEntityResponseDto,
      () => GetManyUserEntityResponseDto.fromJsonFactory,
    );

    return _getManyBaseUserControllerUserEntity(
      fields: fields,
      s: s,
      filter: filter,
      or: or,
      sort: sort,
      join: join,
      limit: limit,
      offset: offset,
      page: page,
      cache: cache,
    );
  }

  ///Retrieve multiple UserEntities
  ///@param fields Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>
  ///@param s Adds search condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#search" target="_blank">Docs</a>
  ///@param filter Adds filter condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#filter" target="_blank">Docs</a>
  ///@param or Adds OR condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#or" target="_blank">Docs</a>
  ///@param sort Adds sort by field. <a href="https://github.com/nestjsx/crud/wiki/Requests#sort" target="_blank">Docs</a>
  ///@param join Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>
  ///@param limit Limit amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#limit" target="_blank">Docs</a>
  ///@param offset Offset amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#offset" target="_blank">Docs</a>
  ///@param page Page portion of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#page" target="_blank">Docs</a>
  ///@param cache Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>
  @GET(path: '/rest/User')
  Future<chopper.Response<GetManyUserEntityResponseDto>>
  _getManyBaseUserControllerUserEntity({
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

  ///Create multiple UserEntities
  Future<chopper.Response<List<UserEntity>>>
  createManyBaseUserControllerUserEntity({
    required CreateManyUserEntityDto? body,
  }) {
    generatedMapping.putIfAbsent(UserEntity, () => UserEntity.fromJsonFactory);

    return _createManyBaseUserControllerUserEntity(body: body);
  }

  ///Create multiple UserEntities
  @POST(path: '/rest/User/bulk', optionalBody: true)
  Future<chopper.Response<List<UserEntity>>>
  _createManyBaseUserControllerUserEntity({
    @Body() required CreateManyUserEntityDto? body,
  });

  ///Update a single UserEntity
  ///@param id
  Future<chopper.Response<UserEntity>> updateOneBaseUserControllerUserEntity({
    required num? id,
    required UpdateUserDto? body,
  }) {
    generatedMapping.putIfAbsent(UserEntity, () => UserEntity.fromJsonFactory);

    return _updateOneBaseUserControllerUserEntity(id: id, body: body);
  }

  ///Update a single UserEntity
  ///@param id
  @PATCH(path: '/rest/User/{id}', optionalBody: true)
  Future<chopper.Response<UserEntity>> _updateOneBaseUserControllerUserEntity({
    @Path('id') required num? id,
    @Body() required UpdateUserDto? body,
  });

  ///Replace a single UserEntity
  ///@param id
  Future<chopper.Response<UserEntity>> replaceOneBaseUserControllerUserEntity({
    required num? id,
    required UserEntity? body,
  }) {
    generatedMapping.putIfAbsent(UserEntity, () => UserEntity.fromJsonFactory);

    return _replaceOneBaseUserControllerUserEntity(id: id, body: body);
  }

  ///Replace a single UserEntity
  ///@param id
  @PUT(path: '/rest/User/{id}', optionalBody: true)
  Future<chopper.Response<UserEntity>> _replaceOneBaseUserControllerUserEntity({
    @Path('id') required num? id,
    @Body() required UserEntity? body,
  });

  ///Delete a single UserEntity
  ///@param id
  Future<chopper.Response> deleteOneBaseUserControllerUserEntity({
    required num? id,
  }) {
    return _deleteOneBaseUserControllerUserEntity(id: id);
  }

  ///Delete a single UserEntity
  ///@param id
  @DELETE(path: '/rest/User/{id}')
  Future<chopper.Response> _deleteOneBaseUserControllerUserEntity({
    @Path('id') required num? id,
  });

  ///Retrieve a single UserEntity
  ///@param id
  ///@param fields Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>
  ///@param join Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>
  ///@param cache Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>
  Future<chopper.Response<UserEntity>> getOneBaseUserControllerUserEntity({
    required num? id,
    List<String>? fields,
    List<String>? join,
    int? cache,
  }) {
    generatedMapping.putIfAbsent(UserEntity, () => UserEntity.fromJsonFactory);

    return _getOneBaseUserControllerUserEntity(
      id: id,
      fields: fields,
      join: join,
      cache: cache,
    );
  }

  ///Retrieve a single UserEntity
  ///@param id
  ///@param fields Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>
  ///@param join Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>
  ///@param cache Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>
  @GET(path: '/rest/User/{id}')
  Future<chopper.Response<UserEntity>> _getOneBaseUserControllerUserEntity({
    @Path('id') required num? id,
    @Query('fields') List<String>? fields,
    @Query('join') List<String>? join,
    @Query('cache') int? cache,
  });

  ///
  Future<chopper.Response> UserController_() {
    return _UserController_();
  }

  ///
  @GET(path: '/rest/User/metadata')
  Future<chopper.Response> _UserController_();

  ///Retrieve multiple UserMealQuestionsEntities
  ///@param fields Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>
  ///@param s Adds search condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#search" target="_blank">Docs</a>
  ///@param filter Adds filter condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#filter" target="_blank">Docs</a>
  ///@param or Adds OR condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#or" target="_blank">Docs</a>
  ///@param sort Adds sort by field. <a href="https://github.com/nestjsx/crud/wiki/Requests#sort" target="_blank">Docs</a>
  ///@param join Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>
  ///@param limit Limit amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#limit" target="_blank">Docs</a>
  ///@param offset Offset amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#offset" target="_blank">Docs</a>
  ///@param page Page portion of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#page" target="_blank">Docs</a>
  ///@param cache Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>
  Future<chopper.Response<GetManyUserMealQuestionsEntityResponseDto>>
  getManyBaseUserMealQuestionsControllerUserMealQuestionsEntity({
    List<String>? fields,
    String? s,
    List<String>? filter,
    List<String>? or,
    List<String>? sort,
    List<String>? join,
    int? limit,
    int? offset,
    int? page,
    int? cache,
  }) {
    generatedMapping.putIfAbsent(
      GetManyUserMealQuestionsEntityResponseDto,
      () => GetManyUserMealQuestionsEntityResponseDto.fromJsonFactory,
    );

    return _getManyBaseUserMealQuestionsControllerUserMealQuestionsEntity(
      fields: fields,
      s: s,
      filter: filter,
      or: or,
      sort: sort,
      join: join,
      limit: limit,
      offset: offset,
      page: page,
      cache: cache,
    );
  }

  ///Retrieve multiple UserMealQuestionsEntities
  ///@param fields Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>
  ///@param s Adds search condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#search" target="_blank">Docs</a>
  ///@param filter Adds filter condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#filter" target="_blank">Docs</a>
  ///@param or Adds OR condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#or" target="_blank">Docs</a>
  ///@param sort Adds sort by field. <a href="https://github.com/nestjsx/crud/wiki/Requests#sort" target="_blank">Docs</a>
  ///@param join Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>
  ///@param limit Limit amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#limit" target="_blank">Docs</a>
  ///@param offset Offset amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#offset" target="_blank">Docs</a>
  ///@param page Page portion of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#page" target="_blank">Docs</a>
  ///@param cache Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>
  @GET(path: '/rest/UserMealQuestions')
  Future<chopper.Response<GetManyUserMealQuestionsEntityResponseDto>>
  _getManyBaseUserMealQuestionsControllerUserMealQuestionsEntity({
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

  ///Create a single UserMealQuestionsEntity
  Future<chopper.Response<UserMealQuestionsEntity>>
  createOneBaseUserMealQuestionsControllerUserMealQuestionsEntity({
    required CreateUserMealQuestionDto? body,
  }) {
    generatedMapping.putIfAbsent(
      UserMealQuestionsEntity,
      () => UserMealQuestionsEntity.fromJsonFactory,
    );

    return _createOneBaseUserMealQuestionsControllerUserMealQuestionsEntity(
      body: body,
    );
  }

  ///Create a single UserMealQuestionsEntity
  @POST(path: '/rest/UserMealQuestions', optionalBody: true)
  Future<chopper.Response<UserMealQuestionsEntity>>
  _createOneBaseUserMealQuestionsControllerUserMealQuestionsEntity({
    @Body() required CreateUserMealQuestionDto? body,
  });

  ///Create multiple UserMealQuestionsEntities
  Future<chopper.Response<List<UserMealQuestionsEntity>>>
  createManyBaseUserMealQuestionsControllerUserMealQuestionsEntity({
    required CreateManyUserMealQuestionsEntityDto? body,
  }) {
    generatedMapping.putIfAbsent(
      UserMealQuestionsEntity,
      () => UserMealQuestionsEntity.fromJsonFactory,
    );

    return _createManyBaseUserMealQuestionsControllerUserMealQuestionsEntity(
      body: body,
    );
  }

  ///Create multiple UserMealQuestionsEntities
  @POST(path: '/rest/UserMealQuestions/bulk', optionalBody: true)
  Future<chopper.Response<List<UserMealQuestionsEntity>>>
  _createManyBaseUserMealQuestionsControllerUserMealQuestionsEntity({
    @Body() required CreateManyUserMealQuestionsEntityDto? body,
  });

  ///Update a single UserMealQuestionsEntity
  ///@param id
  Future<chopper.Response<UserMealQuestionsEntity>>
  updateOneBaseUserMealQuestionsControllerUserMealQuestionsEntity({
    required num? id,
    required UpdateUserMealQuestionDto? body,
  }) {
    generatedMapping.putIfAbsent(
      UserMealQuestionsEntity,
      () => UserMealQuestionsEntity.fromJsonFactory,
    );

    return _updateOneBaseUserMealQuestionsControllerUserMealQuestionsEntity(
      id: id,
      body: body,
    );
  }

  ///Update a single UserMealQuestionsEntity
  ///@param id
  @PATCH(path: '/rest/UserMealQuestions/{id}', optionalBody: true)
  Future<chopper.Response<UserMealQuestionsEntity>>
  _updateOneBaseUserMealQuestionsControllerUserMealQuestionsEntity({
    @Path('id') required num? id,
    @Body() required UpdateUserMealQuestionDto? body,
  });

  ///Replace a single UserMealQuestionsEntity
  ///@param id
  Future<chopper.Response<UserMealQuestionsEntity>>
  replaceOneBaseUserMealQuestionsControllerUserMealQuestionsEntity({
    required num? id,
    required UserMealQuestionsEntity? body,
  }) {
    generatedMapping.putIfAbsent(
      UserMealQuestionsEntity,
      () => UserMealQuestionsEntity.fromJsonFactory,
    );

    return _replaceOneBaseUserMealQuestionsControllerUserMealQuestionsEntity(
      id: id,
      body: body,
    );
  }

  ///Replace a single UserMealQuestionsEntity
  ///@param id
  @PUT(path: '/rest/UserMealQuestions/{id}', optionalBody: true)
  Future<chopper.Response<UserMealQuestionsEntity>>
  _replaceOneBaseUserMealQuestionsControllerUserMealQuestionsEntity({
    @Path('id') required num? id,
    @Body() required UserMealQuestionsEntity? body,
  });

  ///Delete a single UserMealQuestionsEntity
  ///@param id
  Future<chopper.Response>
  deleteOneBaseUserMealQuestionsControllerUserMealQuestionsEntity({
    required num? id,
  }) {
    return _deleteOneBaseUserMealQuestionsControllerUserMealQuestionsEntity(
      id: id,
    );
  }

  ///Delete a single UserMealQuestionsEntity
  ///@param id
  @DELETE(path: '/rest/UserMealQuestions/{id}')
  Future<chopper.Response>
  _deleteOneBaseUserMealQuestionsControllerUserMealQuestionsEntity({
    @Path('id') required num? id,
  });

  ///Retrieve a single UserMealQuestionsEntity
  ///@param id
  ///@param fields Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>
  ///@param join Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>
  ///@param cache Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>
  Future<chopper.Response<UserMealQuestionsEntity>>
  getOneBaseUserMealQuestionsControllerUserMealQuestionsEntity({
    required num? id,
    List<String>? fields,
    List<String>? join,
    int? cache,
  }) {
    generatedMapping.putIfAbsent(
      UserMealQuestionsEntity,
      () => UserMealQuestionsEntity.fromJsonFactory,
    );

    return _getOneBaseUserMealQuestionsControllerUserMealQuestionsEntity(
      id: id,
      fields: fields,
      join: join,
      cache: cache,
    );
  }

  ///Retrieve a single UserMealQuestionsEntity
  ///@param id
  ///@param fields Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>
  ///@param join Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>
  ///@param cache Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>
  @GET(path: '/rest/UserMealQuestions/{id}')
  Future<chopper.Response<UserMealQuestionsEntity>>
  _getOneBaseUserMealQuestionsControllerUserMealQuestionsEntity({
    @Path('id') required num? id,
    @Query('fields') List<String>? fields,
    @Query('join') List<String>? join,
    @Query('cache') int? cache,
  });

  ///
  Future<chopper.Response> UserMealQuestionsController_() {
    return _UserMealQuestionsController_();
  }

  ///
  @GET(path: '/rest/UserMealQuestions/metadata')
  Future<chopper.Response> _UserMealQuestionsController_();

  ///
  ///@param id
  Future<chopper.Response<List<UserSubMealLogEntity>>>
  UserSubMealLogController_getByMainMealId({required num? id}) {
    generatedMapping.putIfAbsent(
      UserSubMealLogEntity,
      () => UserSubMealLogEntity.fromJsonFactory,
    );

    return _UserSubMealLogController_getByMainMealId(id: id);
  }

  ///
  ///@param id
  @GET(path: '/rest/UserSubMealLog/main-meal/{id}')
  Future<chopper.Response<List<UserSubMealLogEntity>>>
  _UserSubMealLogController_getByMainMealId({@Path('id') required num? id});

  ///Retrieve multiple UserSubMealLogEntities
  ///@param fields Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>
  ///@param s Adds search condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#search" target="_blank">Docs</a>
  ///@param filter Adds filter condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#filter" target="_blank">Docs</a>
  ///@param or Adds OR condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#or" target="_blank">Docs</a>
  ///@param sort Adds sort by field. <a href="https://github.com/nestjsx/crud/wiki/Requests#sort" target="_blank">Docs</a>
  ///@param join Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>
  ///@param limit Limit amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#limit" target="_blank">Docs</a>
  ///@param offset Offset amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#offset" target="_blank">Docs</a>
  ///@param page Page portion of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#page" target="_blank">Docs</a>
  ///@param cache Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>
  Future<chopper.Response<GetManyUserSubMealLogEntityResponseDto>>
  getManyBaseUserSubMealLogControllerUserSubMealLogEntity({
    List<String>? fields,
    String? s,
    List<String>? filter,
    List<String>? or,
    List<String>? sort,
    List<String>? join,
    int? limit,
    int? offset,
    int? page,
    int? cache,
  }) {
    generatedMapping.putIfAbsent(
      GetManyUserSubMealLogEntityResponseDto,
      () => GetManyUserSubMealLogEntityResponseDto.fromJsonFactory,
    );

    return _getManyBaseUserSubMealLogControllerUserSubMealLogEntity(
      fields: fields,
      s: s,
      filter: filter,
      or: or,
      sort: sort,
      join: join,
      limit: limit,
      offset: offset,
      page: page,
      cache: cache,
    );
  }

  ///Retrieve multiple UserSubMealLogEntities
  ///@param fields Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>
  ///@param s Adds search condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#search" target="_blank">Docs</a>
  ///@param filter Adds filter condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#filter" target="_blank">Docs</a>
  ///@param or Adds OR condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#or" target="_blank">Docs</a>
  ///@param sort Adds sort by field. <a href="https://github.com/nestjsx/crud/wiki/Requests#sort" target="_blank">Docs</a>
  ///@param join Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>
  ///@param limit Limit amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#limit" target="_blank">Docs</a>
  ///@param offset Offset amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#offset" target="_blank">Docs</a>
  ///@param page Page portion of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#page" target="_blank">Docs</a>
  ///@param cache Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>
  @GET(path: '/rest/UserSubMealLog')
  Future<chopper.Response<GetManyUserSubMealLogEntityResponseDto>>
  _getManyBaseUserSubMealLogControllerUserSubMealLogEntity({
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

  ///Create a single UserSubMealLogEntity
  Future<chopper.Response<UserSubMealLogEntity>>
  createOneBaseUserSubMealLogControllerUserSubMealLogEntity({
    required CreateUserSubMealLogDto? body,
  }) {
    generatedMapping.putIfAbsent(
      UserSubMealLogEntity,
      () => UserSubMealLogEntity.fromJsonFactory,
    );

    return _createOneBaseUserSubMealLogControllerUserSubMealLogEntity(
      body: body,
    );
  }

  ///Create a single UserSubMealLogEntity
  @POST(path: '/rest/UserSubMealLog', optionalBody: true)
  Future<chopper.Response<UserSubMealLogEntity>>
  _createOneBaseUserSubMealLogControllerUserSubMealLogEntity({
    @Body() required CreateUserSubMealLogDto? body,
  });

  ///Create multiple UserSubMealLogEntities
  Future<chopper.Response<List<UserSubMealLogEntity>>>
  createManyBaseUserSubMealLogControllerUserSubMealLogEntity({
    required CreateManyUserSubMealLogEntityDto? body,
  }) {
    generatedMapping.putIfAbsent(
      UserSubMealLogEntity,
      () => UserSubMealLogEntity.fromJsonFactory,
    );

    return _createManyBaseUserSubMealLogControllerUserSubMealLogEntity(
      body: body,
    );
  }

  ///Create multiple UserSubMealLogEntities
  @POST(path: '/rest/UserSubMealLog/bulk', optionalBody: true)
  Future<chopper.Response<List<UserSubMealLogEntity>>>
  _createManyBaseUserSubMealLogControllerUserSubMealLogEntity({
    @Body() required CreateManyUserSubMealLogEntityDto? body,
  });

  ///Update a single UserSubMealLogEntity
  ///@param id
  Future<chopper.Response<UserSubMealLogEntity>>
  updateOneBaseUserSubMealLogControllerUserSubMealLogEntity({
    required num? id,
    required UpdateUserSubMealLogDto? body,
  }) {
    generatedMapping.putIfAbsent(
      UserSubMealLogEntity,
      () => UserSubMealLogEntity.fromJsonFactory,
    );

    return _updateOneBaseUserSubMealLogControllerUserSubMealLogEntity(
      id: id,
      body: body,
    );
  }

  ///Update a single UserSubMealLogEntity
  ///@param id
  @PATCH(path: '/rest/UserSubMealLog/{id}', optionalBody: true)
  Future<chopper.Response<UserSubMealLogEntity>>
  _updateOneBaseUserSubMealLogControllerUserSubMealLogEntity({
    @Path('id') required num? id,
    @Body() required UpdateUserSubMealLogDto? body,
  });

  ///Replace a single UserSubMealLogEntity
  ///@param id
  Future<chopper.Response<UserSubMealLogEntity>>
  replaceOneBaseUserSubMealLogControllerUserSubMealLogEntity({
    required num? id,
    required UserSubMealLogEntity? body,
  }) {
    generatedMapping.putIfAbsent(
      UserSubMealLogEntity,
      () => UserSubMealLogEntity.fromJsonFactory,
    );

    return _replaceOneBaseUserSubMealLogControllerUserSubMealLogEntity(
      id: id,
      body: body,
    );
  }

  ///Replace a single UserSubMealLogEntity
  ///@param id
  @PUT(path: '/rest/UserSubMealLog/{id}', optionalBody: true)
  Future<chopper.Response<UserSubMealLogEntity>>
  _replaceOneBaseUserSubMealLogControllerUserSubMealLogEntity({
    @Path('id') required num? id,
    @Body() required UserSubMealLogEntity? body,
  });

  ///Delete a single UserSubMealLogEntity
  ///@param id
  Future<chopper.Response>
  deleteOneBaseUserSubMealLogControllerUserSubMealLogEntity({
    required num? id,
  }) {
    return _deleteOneBaseUserSubMealLogControllerUserSubMealLogEntity(id: id);
  }

  ///Delete a single UserSubMealLogEntity
  ///@param id
  @DELETE(path: '/rest/UserSubMealLog/{id}')
  Future<chopper.Response>
  _deleteOneBaseUserSubMealLogControllerUserSubMealLogEntity({
    @Path('id') required num? id,
  });

  ///Retrieve a single UserSubMealLogEntity
  ///@param id
  ///@param fields Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>
  ///@param join Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>
  ///@param cache Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>
  Future<chopper.Response<UserSubMealLogEntity>>
  getOneBaseUserSubMealLogControllerUserSubMealLogEntity({
    required num? id,
    List<String>? fields,
    List<String>? join,
    int? cache,
  }) {
    generatedMapping.putIfAbsent(
      UserSubMealLogEntity,
      () => UserSubMealLogEntity.fromJsonFactory,
    );

    return _getOneBaseUserSubMealLogControllerUserSubMealLogEntity(
      id: id,
      fields: fields,
      join: join,
      cache: cache,
    );
  }

  ///Retrieve a single UserSubMealLogEntity
  ///@param id
  ///@param fields Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>
  ///@param join Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>
  ///@param cache Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>
  @GET(path: '/rest/UserSubMealLog/{id}')
  Future<chopper.Response<UserSubMealLogEntity>>
  _getOneBaseUserSubMealLogControllerUserSubMealLogEntity({
    @Path('id') required num? id,
    @Query('fields') List<String>? fields,
    @Query('join') List<String>? join,
    @Query('cache') int? cache,
  });

  ///
  Future<chopper.Response> UserSubMealLogController_() {
    return _UserSubMealLogController_();
  }

  ///
  @GET(path: '/rest/UserSubMealLog/metadata')
  Future<chopper.Response> _UserSubMealLogController_();

  ///
  Future<chopper.Response<ExtractBiodataOutputDto>>
  UserBiodataController_extractUserBiodata({
    required ExtractBiodataInputDto? body,
  }) {
    generatedMapping.putIfAbsent(
      ExtractBiodataOutputDto,
      () => ExtractBiodataOutputDto.fromJsonFactory,
    );

    return _UserBiodataController_extractUserBiodata(body: body);
  }

  ///
  @POST(path: '/rest/UserBiodata/extractUserBiodata', optionalBody: true)
  Future<chopper.Response<ExtractBiodataOutputDto>>
  _UserBiodataController_extractUserBiodata({
    @Body() required ExtractBiodataInputDto? body,
  });

  ///Retrieve multiple UserBiodataEntities
  ///@param fields Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>
  ///@param s Adds search condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#search" target="_blank">Docs</a>
  ///@param filter Adds filter condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#filter" target="_blank">Docs</a>
  ///@param or Adds OR condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#or" target="_blank">Docs</a>
  ///@param sort Adds sort by field. <a href="https://github.com/nestjsx/crud/wiki/Requests#sort" target="_blank">Docs</a>
  ///@param join Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>
  ///@param limit Limit amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#limit" target="_blank">Docs</a>
  ///@param offset Offset amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#offset" target="_blank">Docs</a>
  ///@param page Page portion of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#page" target="_blank">Docs</a>
  ///@param cache Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>
  Future<chopper.Response<GetManyUserBiodataEntityResponseDto>>
  getManyBaseUserBiodataControllerUserBiodataEntity({
    List<String>? fields,
    String? s,
    List<String>? filter,
    List<String>? or,
    List<String>? sort,
    List<String>? join,
    int? limit,
    int? offset,
    int? page,
    int? cache,
  }) {
    generatedMapping.putIfAbsent(
      GetManyUserBiodataEntityResponseDto,
      () => GetManyUserBiodataEntityResponseDto.fromJsonFactory,
    );

    return _getManyBaseUserBiodataControllerUserBiodataEntity(
      fields: fields,
      s: s,
      filter: filter,
      or: or,
      sort: sort,
      join: join,
      limit: limit,
      offset: offset,
      page: page,
      cache: cache,
    );
  }

  ///Retrieve multiple UserBiodataEntities
  ///@param fields Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>
  ///@param s Adds search condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#search" target="_blank">Docs</a>
  ///@param filter Adds filter condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#filter" target="_blank">Docs</a>
  ///@param or Adds OR condition. <a href="https://github.com/nestjsx/crud/wiki/Requests#or" target="_blank">Docs</a>
  ///@param sort Adds sort by field. <a href="https://github.com/nestjsx/crud/wiki/Requests#sort" target="_blank">Docs</a>
  ///@param join Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>
  ///@param limit Limit amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#limit" target="_blank">Docs</a>
  ///@param offset Offset amount of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#offset" target="_blank">Docs</a>
  ///@param page Page portion of resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#page" target="_blank">Docs</a>
  ///@param cache Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>
  @GET(path: '/rest/UserBiodata')
  Future<chopper.Response<GetManyUserBiodataEntityResponseDto>>
  _getManyBaseUserBiodataControllerUserBiodataEntity({
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

  ///Create a single UserBiodataEntity
  Future<chopper.Response<UserBiodataEntity>>
  createOneBaseUserBiodataControllerUserBiodataEntity({
    required CreateUserBiodataDto? body,
  }) {
    generatedMapping.putIfAbsent(
      UserBiodataEntity,
      () => UserBiodataEntity.fromJsonFactory,
    );

    return _createOneBaseUserBiodataControllerUserBiodataEntity(body: body);
  }

  ///Create a single UserBiodataEntity
  @POST(path: '/rest/UserBiodata', optionalBody: true)
  Future<chopper.Response<UserBiodataEntity>>
  _createOneBaseUserBiodataControllerUserBiodataEntity({
    @Body() required CreateUserBiodataDto? body,
  });

  ///Create multiple UserBiodataEntities
  Future<chopper.Response<List<UserBiodataEntity>>>
  createManyBaseUserBiodataControllerUserBiodataEntity({
    required CreateManyUserBiodataEntityDto? body,
  }) {
    generatedMapping.putIfAbsent(
      UserBiodataEntity,
      () => UserBiodataEntity.fromJsonFactory,
    );

    return _createManyBaseUserBiodataControllerUserBiodataEntity(body: body);
  }

  ///Create multiple UserBiodataEntities
  @POST(path: '/rest/UserBiodata/bulk', optionalBody: true)
  Future<chopper.Response<List<UserBiodataEntity>>>
  _createManyBaseUserBiodataControllerUserBiodataEntity({
    @Body() required CreateManyUserBiodataEntityDto? body,
  });

  ///Update a single UserBiodataEntity
  ///@param id
  Future<chopper.Response<UserBiodataEntity>>
  updateOneBaseUserBiodataControllerUserBiodataEntity({
    required num? id,
    required UpdateUserBiodataDto? body,
  }) {
    generatedMapping.putIfAbsent(
      UserBiodataEntity,
      () => UserBiodataEntity.fromJsonFactory,
    );

    return _updateOneBaseUserBiodataControllerUserBiodataEntity(
      id: id,
      body: body,
    );
  }

  ///Update a single UserBiodataEntity
  ///@param id
  @PATCH(path: '/rest/UserBiodata/{id}', optionalBody: true)
  Future<chopper.Response<UserBiodataEntity>>
  _updateOneBaseUserBiodataControllerUserBiodataEntity({
    @Path('id') required num? id,
    @Body() required UpdateUserBiodataDto? body,
  });

  ///Replace a single UserBiodataEntity
  ///@param id
  Future<chopper.Response<UserBiodataEntity>>
  replaceOneBaseUserBiodataControllerUserBiodataEntity({
    required num? id,
    required UserBiodataEntity? body,
  }) {
    generatedMapping.putIfAbsent(
      UserBiodataEntity,
      () => UserBiodataEntity.fromJsonFactory,
    );

    return _replaceOneBaseUserBiodataControllerUserBiodataEntity(
      id: id,
      body: body,
    );
  }

  ///Replace a single UserBiodataEntity
  ///@param id
  @PUT(path: '/rest/UserBiodata/{id}', optionalBody: true)
  Future<chopper.Response<UserBiodataEntity>>
  _replaceOneBaseUserBiodataControllerUserBiodataEntity({
    @Path('id') required num? id,
    @Body() required UserBiodataEntity? body,
  });

  ///Delete a single UserBiodataEntity
  ///@param id
  Future<chopper.Response> deleteOneBaseUserBiodataControllerUserBiodataEntity({
    required num? id,
  }) {
    return _deleteOneBaseUserBiodataControllerUserBiodataEntity(id: id);
  }

  ///Delete a single UserBiodataEntity
  ///@param id
  @DELETE(path: '/rest/UserBiodata/{id}')
  Future<chopper.Response>
  _deleteOneBaseUserBiodataControllerUserBiodataEntity({
    @Path('id') required num? id,
  });

  ///Retrieve a single UserBiodataEntity
  ///@param id
  ///@param fields Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>
  ///@param join Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>
  ///@param cache Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>
  Future<chopper.Response<UserBiodataEntity>>
  getOneBaseUserBiodataControllerUserBiodataEntity({
    required num? id,
    List<String>? fields,
    List<String>? join,
    int? cache,
  }) {
    generatedMapping.putIfAbsent(
      UserBiodataEntity,
      () => UserBiodataEntity.fromJsonFactory,
    );

    return _getOneBaseUserBiodataControllerUserBiodataEntity(
      id: id,
      fields: fields,
      join: join,
      cache: cache,
    );
  }

  ///Retrieve a single UserBiodataEntity
  ///@param id
  ///@param fields Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>
  ///@param join Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>
  ///@param cache Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>
  @GET(path: '/rest/UserBiodata/{id}')
  Future<chopper.Response<UserBiodataEntity>>
  _getOneBaseUserBiodataControllerUserBiodataEntity({
    @Path('id') required num? id,
    @Query('fields') List<String>? fields,
    @Query('join') List<String>? join,
    @Query('cache') int? cache,
  });

  ///
  Future<chopper.Response> UserBiodataController_() {
    return _UserBiodataController_();
  }

  ///
  @GET(path: '/rest/UserBiodata/metadata')
  Future<chopper.Response> _UserBiodataController_();
}

@JsonSerializable(explicitToJson: true)
class GetManyAIPromptEntityResponseDto {
  const GetManyAIPromptEntityResponseDto({
    required this.data,
    required this.count,
    required this.total,
    required this.page,
    required this.pageCount,
  });

  factory GetManyAIPromptEntityResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$GetManyAIPromptEntityResponseDtoFromJson(json);

  static const toJsonFactory = _$GetManyAIPromptEntityResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$GetManyAIPromptEntityResponseDtoToJson(this);

  @JsonKey(name: 'data', defaultValue: <AIPromptEntity>[])
  final List<AIPromptEntity> data;
  @JsonKey(name: 'count')
  final double count;
  @JsonKey(name: 'total')
  final double total;
  @JsonKey(name: 'page')
  final double page;
  @JsonKey(name: 'pageCount')
  final double pageCount;
  static const fromJsonFactory = _$GetManyAIPromptEntityResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is GetManyAIPromptEntityResponseDto &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.pageCount, pageCount) ||
                const DeepCollectionEquality().equals(
                  other.pageCount,
                  pageCount,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(pageCount) ^
      runtimeType.hashCode;
}

extension $GetManyAIPromptEntityResponseDtoExtension
    on GetManyAIPromptEntityResponseDto {
  GetManyAIPromptEntityResponseDto copyWith({
    List<AIPromptEntity>? data,
    double? count,
    double? total,
    double? page,
    double? pageCount,
  }) {
    return GetManyAIPromptEntityResponseDto(
      data: data ?? this.data,
      count: count ?? this.count,
      total: total ?? this.total,
      page: page ?? this.page,
      pageCount: pageCount ?? this.pageCount,
    );
  }

  GetManyAIPromptEntityResponseDto copyWithWrapped({
    Wrapped<List<AIPromptEntity>>? data,
    Wrapped<double>? count,
    Wrapped<double>? total,
    Wrapped<double>? page,
    Wrapped<double>? pageCount,
  }) {
    return GetManyAIPromptEntityResponseDto(
      data: (data != null ? data.value : this.data),
      count: (count != null ? count.value : this.count),
      total: (total != null ? total.value : this.total),
      page: (page != null ? page.value : this.page),
      pageCount: (pageCount != null ? pageCount.value : this.pageCount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AIPromptEntity {
  const AIPromptEntity({
    required this.id,
    required this.promptName,
    required this.promptRequest,
    required this.createdBy,
    required this.creationDate,
    required this.lastUpdatedDate,
    this.deletedAt,
  });

  factory AIPromptEntity.fromJson(Map<String, dynamic> json) =>
      _$AIPromptEntityFromJson(json);

  static const toJsonFactory = _$AIPromptEntityToJson;
  Map<String, dynamic> toJson() => _$AIPromptEntityToJson(this);

  @JsonKey(name: 'id')
  final double id;
  @JsonKey(name: 'promptName')
  final String promptName;
  @JsonKey(name: 'promptRequest')
  final String promptRequest;
  @JsonKey(name: 'createdBy')
  final String createdBy;
  @JsonKey(name: 'creationDate')
  final DateTime creationDate;
  @JsonKey(name: 'lastUpdatedDate')
  final DateTime lastUpdatedDate;
  @JsonKey(name: 'deletedAt')
  final DateTime? deletedAt;
  static const fromJsonFactory = _$AIPromptEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AIPromptEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.promptName, promptName) ||
                const DeepCollectionEquality().equals(
                  other.promptName,
                  promptName,
                )) &&
            (identical(other.promptRequest, promptRequest) ||
                const DeepCollectionEquality().equals(
                  other.promptRequest,
                  promptRequest,
                )) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality().equals(
                  other.createdBy,
                  createdBy,
                )) &&
            (identical(other.creationDate, creationDate) ||
                const DeepCollectionEquality().equals(
                  other.creationDate,
                  creationDate,
                )) &&
            (identical(other.lastUpdatedDate, lastUpdatedDate) ||
                const DeepCollectionEquality().equals(
                  other.lastUpdatedDate,
                  lastUpdatedDate,
                )) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality().equals(
                  other.deletedAt,
                  deletedAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(promptName) ^
      const DeepCollectionEquality().hash(promptRequest) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(lastUpdatedDate) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      runtimeType.hashCode;
}

extension $AIPromptEntityExtension on AIPromptEntity {
  AIPromptEntity copyWith({
    double? id,
    String? promptName,
    String? promptRequest,
    String? createdBy,
    DateTime? creationDate,
    DateTime? lastUpdatedDate,
    DateTime? deletedAt,
  }) {
    return AIPromptEntity(
      id: id ?? this.id,
      promptName: promptName ?? this.promptName,
      promptRequest: promptRequest ?? this.promptRequest,
      createdBy: createdBy ?? this.createdBy,
      creationDate: creationDate ?? this.creationDate,
      lastUpdatedDate: lastUpdatedDate ?? this.lastUpdatedDate,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }

  AIPromptEntity copyWithWrapped({
    Wrapped<double>? id,
    Wrapped<String>? promptName,
    Wrapped<String>? promptRequest,
    Wrapped<String>? createdBy,
    Wrapped<DateTime>? creationDate,
    Wrapped<DateTime>? lastUpdatedDate,
    Wrapped<DateTime?>? deletedAt,
  }) {
    return AIPromptEntity(
      id: (id != null ? id.value : this.id),
      promptName: (promptName != null ? promptName.value : this.promptName),
      promptRequest:
          (promptRequest != null ? promptRequest.value : this.promptRequest),
      createdBy: (createdBy != null ? createdBy.value : this.createdBy),
      creationDate:
          (creationDate != null ? creationDate.value : this.creationDate),
      lastUpdatedDate:
          (lastUpdatedDate != null
              ? lastUpdatedDate.value
              : this.lastUpdatedDate),
      deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateManyAIPromptEntityDto {
  const CreateManyAIPromptEntityDto({required this.bulk});

  factory CreateManyAIPromptEntityDto.fromJson(Map<String, dynamic> json) =>
      _$CreateManyAIPromptEntityDtoFromJson(json);

  static const toJsonFactory = _$CreateManyAIPromptEntityDtoToJson;
  Map<String, dynamic> toJson() => _$CreateManyAIPromptEntityDtoToJson(this);

  @JsonKey(name: 'bulk', defaultValue: <AIPromptEntity>[])
  final List<AIPromptEntity> bulk;
  static const fromJsonFactory = _$CreateManyAIPromptEntityDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateManyAIPromptEntityDto &&
            (identical(other.bulk, bulk) ||
                const DeepCollectionEquality().equals(other.bulk, bulk)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(bulk) ^ runtimeType.hashCode;
}

extension $CreateManyAIPromptEntityDtoExtension on CreateManyAIPromptEntityDto {
  CreateManyAIPromptEntityDto copyWith({List<AIPromptEntity>? bulk}) {
    return CreateManyAIPromptEntityDto(bulk: bulk ?? this.bulk);
  }

  CreateManyAIPromptEntityDto copyWithWrapped({
    Wrapped<List<AIPromptEntity>>? bulk,
  }) {
    return CreateManyAIPromptEntityDto(
      bulk: (bulk != null ? bulk.value : this.bulk),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserMealInputDto {
  const UserMealInputDto({
    required this.userId,
    this.userMealId,
    this.mealImage,
    required this.mealName,
    required this.mealType,
    required this.dateOfMeal,
  });

  factory UserMealInputDto.fromJson(Map<String, dynamic> json) =>
      _$UserMealInputDtoFromJson(json);

  static const toJsonFactory = _$UserMealInputDtoToJson;
  Map<String, dynamic> toJson() => _$UserMealInputDtoToJson(this);

  @JsonKey(name: 'userId')
  final double userId;
  @JsonKey(name: 'userMealId')
  final double? userMealId;
  @JsonKey(name: 'mealImage')
  final String? mealImage;
  @JsonKey(name: 'mealName')
  final String mealName;
  @JsonKey(name: 'mealType')
  final String mealType;
  @JsonKey(name: 'dateOfMeal')
  final DateTime dateOfMeal;
  static const fromJsonFactory = _$UserMealInputDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserMealInputDto &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userMealId, userMealId) ||
                const DeepCollectionEquality().equals(
                  other.userMealId,
                  userMealId,
                )) &&
            (identical(other.mealImage, mealImage) ||
                const DeepCollectionEquality().equals(
                  other.mealImage,
                  mealImage,
                )) &&
            (identical(other.mealName, mealName) ||
                const DeepCollectionEquality().equals(
                  other.mealName,
                  mealName,
                )) &&
            (identical(other.mealType, mealType) ||
                const DeepCollectionEquality().equals(
                  other.mealType,
                  mealType,
                )) &&
            (identical(other.dateOfMeal, dateOfMeal) ||
                const DeepCollectionEquality().equals(
                  other.dateOfMeal,
                  dateOfMeal,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userMealId) ^
      const DeepCollectionEquality().hash(mealImage) ^
      const DeepCollectionEquality().hash(mealName) ^
      const DeepCollectionEquality().hash(mealType) ^
      const DeepCollectionEquality().hash(dateOfMeal) ^
      runtimeType.hashCode;
}

extension $UserMealInputDtoExtension on UserMealInputDto {
  UserMealInputDto copyWith({
    double? userId,
    double? userMealId,
    String? mealImage,
    String? mealName,
    String? mealType,
    DateTime? dateOfMeal,
  }) {
    return UserMealInputDto(
      userId: userId ?? this.userId,
      userMealId: userMealId ?? this.userMealId,
      mealImage: mealImage ?? this.mealImage,
      mealName: mealName ?? this.mealName,
      mealType: mealType ?? this.mealType,
      dateOfMeal: dateOfMeal ?? this.dateOfMeal,
    );
  }

  UserMealInputDto copyWithWrapped({
    Wrapped<double>? userId,
    Wrapped<double?>? userMealId,
    Wrapped<String?>? mealImage,
    Wrapped<String>? mealName,
    Wrapped<String>? mealType,
    Wrapped<DateTime>? dateOfMeal,
  }) {
    return UserMealInputDto(
      userId: (userId != null ? userId.value : this.userId),
      userMealId: (userMealId != null ? userMealId.value : this.userMealId),
      mealImage: (mealImage != null ? mealImage.value : this.mealImage),
      mealName: (mealName != null ? mealName.value : this.mealName),
      mealType: (mealType != null ? mealType.value : this.mealType),
      dateOfMeal: (dateOfMeal != null ? dateOfMeal.value : this.dateOfMeal),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class GetManyUserMealLogEntityResponseDto {
  const GetManyUserMealLogEntityResponseDto({
    required this.data,
    required this.count,
    required this.total,
    required this.page,
    required this.pageCount,
  });

  factory GetManyUserMealLogEntityResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$GetManyUserMealLogEntityResponseDtoFromJson(json);

  static const toJsonFactory = _$GetManyUserMealLogEntityResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$GetManyUserMealLogEntityResponseDtoToJson(this);

  @JsonKey(name: 'data', defaultValue: <UserMealLogEntity>[])
  final List<UserMealLogEntity> data;
  @JsonKey(name: 'count')
  final double count;
  @JsonKey(name: 'total')
  final double total;
  @JsonKey(name: 'page')
  final double page;
  @JsonKey(name: 'pageCount')
  final double pageCount;
  static const fromJsonFactory = _$GetManyUserMealLogEntityResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is GetManyUserMealLogEntityResponseDto &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.pageCount, pageCount) ||
                const DeepCollectionEquality().equals(
                  other.pageCount,
                  pageCount,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(pageCount) ^
      runtimeType.hashCode;
}

extension $GetManyUserMealLogEntityResponseDtoExtension
    on GetManyUserMealLogEntityResponseDto {
  GetManyUserMealLogEntityResponseDto copyWith({
    List<UserMealLogEntity>? data,
    double? count,
    double? total,
    double? page,
    double? pageCount,
  }) {
    return GetManyUserMealLogEntityResponseDto(
      data: data ?? this.data,
      count: count ?? this.count,
      total: total ?? this.total,
      page: page ?? this.page,
      pageCount: pageCount ?? this.pageCount,
    );
  }

  GetManyUserMealLogEntityResponseDto copyWithWrapped({
    Wrapped<List<UserMealLogEntity>>? data,
    Wrapped<double>? count,
    Wrapped<double>? total,
    Wrapped<double>? page,
    Wrapped<double>? pageCount,
  }) {
    return GetManyUserMealLogEntityResponseDto(
      data: (data != null ? data.value : this.data),
      count: (count != null ? count.value : this.count),
      total: (total != null ? total.value : this.total),
      page: (page != null ? page.value : this.page),
      pageCount: (pageCount != null ? pageCount.value : this.pageCount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class GetManyAIIntegrationLogsEntityResponseDto {
  const GetManyAIIntegrationLogsEntityResponseDto({
    required this.data,
    required this.count,
    required this.total,
    required this.page,
    required this.pageCount,
  });

  factory GetManyAIIntegrationLogsEntityResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$GetManyAIIntegrationLogsEntityResponseDtoFromJson(json);

  static const toJsonFactory =
      _$GetManyAIIntegrationLogsEntityResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$GetManyAIIntegrationLogsEntityResponseDtoToJson(this);

  @JsonKey(name: 'data', defaultValue: <AIIntegrationLogsEntity>[])
  final List<AIIntegrationLogsEntity> data;
  @JsonKey(name: 'count')
  final double count;
  @JsonKey(name: 'total')
  final double total;
  @JsonKey(name: 'page')
  final double page;
  @JsonKey(name: 'pageCount')
  final double pageCount;
  static const fromJsonFactory =
      _$GetManyAIIntegrationLogsEntityResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is GetManyAIIntegrationLogsEntityResponseDto &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.pageCount, pageCount) ||
                const DeepCollectionEquality().equals(
                  other.pageCount,
                  pageCount,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(pageCount) ^
      runtimeType.hashCode;
}

extension $GetManyAIIntegrationLogsEntityResponseDtoExtension
    on GetManyAIIntegrationLogsEntityResponseDto {
  GetManyAIIntegrationLogsEntityResponseDto copyWith({
    List<AIIntegrationLogsEntity>? data,
    double? count,
    double? total,
    double? page,
    double? pageCount,
  }) {
    return GetManyAIIntegrationLogsEntityResponseDto(
      data: data ?? this.data,
      count: count ?? this.count,
      total: total ?? this.total,
      page: page ?? this.page,
      pageCount: pageCount ?? this.pageCount,
    );
  }

  GetManyAIIntegrationLogsEntityResponseDto copyWithWrapped({
    Wrapped<List<AIIntegrationLogsEntity>>? data,
    Wrapped<double>? count,
    Wrapped<double>? total,
    Wrapped<double>? page,
    Wrapped<double>? pageCount,
  }) {
    return GetManyAIIntegrationLogsEntityResponseDto(
      data: (data != null ? data.value : this.data),
      count: (count != null ? count.value : this.count),
      total: (total != null ? total.value : this.total),
      page: (page != null ? page.value : this.page),
      pageCount: (pageCount != null ? pageCount.value : this.pageCount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserEntity {
  const UserEntity({
    required this.id,
    required this.name,
    required this.emailAddress,
    required this.mobileNumber,
    required this.password,
    this.passwordResetCode,
    required this.accountStatus,
    required this.createdBy,
    required this.lastUpdatedBy,
    this.subscriptionId,
    required this.creationDate,
    required this.lastUpdatedDate,
    this.deletedAt,
  });

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);

  static const toJsonFactory = _$UserEntityToJson;
  Map<String, dynamic> toJson() => _$UserEntityToJson(this);

  @JsonKey(name: 'id')
  final double id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'emailAddress')
  final String emailAddress;
  @JsonKey(name: 'mobileNumber')
  final String mobileNumber;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'passwordResetCode')
  final String? passwordResetCode;
  @JsonKey(name: 'accountStatus')
  final double accountStatus;
  @JsonKey(name: 'createdBy')
  final String createdBy;
  @JsonKey(name: 'lastUpdatedBy')
  final String lastUpdatedBy;
  @JsonKey(name: 'subscriptionId')
  final double? subscriptionId;
  @JsonKey(name: 'creationDate')
  final DateTime creationDate;
  @JsonKey(name: 'lastUpdatedDate')
  final DateTime lastUpdatedDate;
  @JsonKey(name: 'deletedAt')
  final DateTime? deletedAt;
  static const fromJsonFactory = _$UserEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality().equals(
                  other.emailAddress,
                  emailAddress,
                )) &&
            (identical(other.mobileNumber, mobileNumber) ||
                const DeepCollectionEquality().equals(
                  other.mobileNumber,
                  mobileNumber,
                )) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality().equals(
                  other.password,
                  password,
                )) &&
            (identical(other.passwordResetCode, passwordResetCode) ||
                const DeepCollectionEquality().equals(
                  other.passwordResetCode,
                  passwordResetCode,
                )) &&
            (identical(other.accountStatus, accountStatus) ||
                const DeepCollectionEquality().equals(
                  other.accountStatus,
                  accountStatus,
                )) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality().equals(
                  other.createdBy,
                  createdBy,
                )) &&
            (identical(other.lastUpdatedBy, lastUpdatedBy) ||
                const DeepCollectionEquality().equals(
                  other.lastUpdatedBy,
                  lastUpdatedBy,
                )) &&
            (identical(other.subscriptionId, subscriptionId) ||
                const DeepCollectionEquality().equals(
                  other.subscriptionId,
                  subscriptionId,
                )) &&
            (identical(other.creationDate, creationDate) ||
                const DeepCollectionEquality().equals(
                  other.creationDate,
                  creationDate,
                )) &&
            (identical(other.lastUpdatedDate, lastUpdatedDate) ||
                const DeepCollectionEquality().equals(
                  other.lastUpdatedDate,
                  lastUpdatedDate,
                )) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality().equals(
                  other.deletedAt,
                  deletedAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(mobileNumber) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(passwordResetCode) ^
      const DeepCollectionEquality().hash(accountStatus) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(lastUpdatedBy) ^
      const DeepCollectionEquality().hash(subscriptionId) ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(lastUpdatedDate) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      runtimeType.hashCode;
}

extension $UserEntityExtension on UserEntity {
  UserEntity copyWith({
    double? id,
    String? name,
    String? emailAddress,
    String? mobileNumber,
    String? password,
    String? passwordResetCode,
    double? accountStatus,
    String? createdBy,
    String? lastUpdatedBy,
    double? subscriptionId,
    DateTime? creationDate,
    DateTime? lastUpdatedDate,
    DateTime? deletedAt,
  }) {
    return UserEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      emailAddress: emailAddress ?? this.emailAddress,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      password: password ?? this.password,
      passwordResetCode: passwordResetCode ?? this.passwordResetCode,
      accountStatus: accountStatus ?? this.accountStatus,
      createdBy: createdBy ?? this.createdBy,
      lastUpdatedBy: lastUpdatedBy ?? this.lastUpdatedBy,
      subscriptionId: subscriptionId ?? this.subscriptionId,
      creationDate: creationDate ?? this.creationDate,
      lastUpdatedDate: lastUpdatedDate ?? this.lastUpdatedDate,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }

  UserEntity copyWithWrapped({
    Wrapped<double>? id,
    Wrapped<String>? name,
    Wrapped<String>? emailAddress,
    Wrapped<String>? mobileNumber,
    Wrapped<String>? password,
    Wrapped<String?>? passwordResetCode,
    Wrapped<double>? accountStatus,
    Wrapped<String>? createdBy,
    Wrapped<String>? lastUpdatedBy,
    Wrapped<double?>? subscriptionId,
    Wrapped<DateTime>? creationDate,
    Wrapped<DateTime>? lastUpdatedDate,
    Wrapped<DateTime?>? deletedAt,
  }) {
    return UserEntity(
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
      emailAddress:
          (emailAddress != null ? emailAddress.value : this.emailAddress),
      mobileNumber:
          (mobileNumber != null ? mobileNumber.value : this.mobileNumber),
      password: (password != null ? password.value : this.password),
      passwordResetCode:
          (passwordResetCode != null
              ? passwordResetCode.value
              : this.passwordResetCode),
      accountStatus:
          (accountStatus != null ? accountStatus.value : this.accountStatus),
      createdBy: (createdBy != null ? createdBy.value : this.createdBy),
      lastUpdatedBy:
          (lastUpdatedBy != null ? lastUpdatedBy.value : this.lastUpdatedBy),
      subscriptionId:
          (subscriptionId != null ? subscriptionId.value : this.subscriptionId),
      creationDate:
          (creationDate != null ? creationDate.value : this.creationDate),
      lastUpdatedDate:
          (lastUpdatedDate != null
              ? lastUpdatedDate.value
              : this.lastUpdatedDate),
      deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AIIntegrationLogsEntity {
  const AIIntegrationLogsEntity({
    required this.id,
    required this.actionUrl,
    required this.request,
    required this.response,
    required this.responseType,
    required this.promptType,
    required this.requestDuration,
    required this.promptToken,
    required this.cost,
    this.createdBy,
    required this.createdDate,
    required this.lastUpdatedDate,
    this.deletedAt,
  });

  factory AIIntegrationLogsEntity.fromJson(Map<String, dynamic> json) =>
      _$AIIntegrationLogsEntityFromJson(json);

  static const toJsonFactory = _$AIIntegrationLogsEntityToJson;
  Map<String, dynamic> toJson() => _$AIIntegrationLogsEntityToJson(this);

  @JsonKey(name: 'id')
  final double id;
  @JsonKey(name: 'actionUrl')
  final String actionUrl;
  @JsonKey(name: 'request')
  final String request;
  @JsonKey(name: 'response')
  final String response;
  @JsonKey(name: 'responseType')
  final String responseType;
  @JsonKey(name: 'promptType')
  final AIPromptEntity promptType;
  @JsonKey(name: 'requestDuration')
  final double requestDuration;
  @JsonKey(name: 'promptToken')
  final double promptToken;
  @JsonKey(name: 'cost')
  final double cost;
  @JsonKey(name: 'createdBy')
  final UserEntity? createdBy;
  @JsonKey(name: 'createdDate')
  final DateTime createdDate;
  @JsonKey(name: 'lastUpdatedDate')
  final DateTime lastUpdatedDate;
  @JsonKey(name: 'deletedAt')
  final DateTime? deletedAt;
  static const fromJsonFactory = _$AIIntegrationLogsEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AIIntegrationLogsEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.actionUrl, actionUrl) ||
                const DeepCollectionEquality().equals(
                  other.actionUrl,
                  actionUrl,
                )) &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(
                  other.request,
                  request,
                )) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality().equals(
                  other.response,
                  response,
                )) &&
            (identical(other.responseType, responseType) ||
                const DeepCollectionEquality().equals(
                  other.responseType,
                  responseType,
                )) &&
            (identical(other.promptType, promptType) ||
                const DeepCollectionEquality().equals(
                  other.promptType,
                  promptType,
                )) &&
            (identical(other.requestDuration, requestDuration) ||
                const DeepCollectionEquality().equals(
                  other.requestDuration,
                  requestDuration,
                )) &&
            (identical(other.promptToken, promptToken) ||
                const DeepCollectionEquality().equals(
                  other.promptToken,
                  promptToken,
                )) &&
            (identical(other.cost, cost) ||
                const DeepCollectionEquality().equals(other.cost, cost)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality().equals(
                  other.createdBy,
                  createdBy,
                )) &&
            (identical(other.createdDate, createdDate) ||
                const DeepCollectionEquality().equals(
                  other.createdDate,
                  createdDate,
                )) &&
            (identical(other.lastUpdatedDate, lastUpdatedDate) ||
                const DeepCollectionEquality().equals(
                  other.lastUpdatedDate,
                  lastUpdatedDate,
                )) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality().equals(
                  other.deletedAt,
                  deletedAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(actionUrl) ^
      const DeepCollectionEquality().hash(request) ^
      const DeepCollectionEquality().hash(response) ^
      const DeepCollectionEquality().hash(responseType) ^
      const DeepCollectionEquality().hash(promptType) ^
      const DeepCollectionEquality().hash(requestDuration) ^
      const DeepCollectionEquality().hash(promptToken) ^
      const DeepCollectionEquality().hash(cost) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdDate) ^
      const DeepCollectionEquality().hash(lastUpdatedDate) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      runtimeType.hashCode;
}

extension $AIIntegrationLogsEntityExtension on AIIntegrationLogsEntity {
  AIIntegrationLogsEntity copyWith({
    double? id,
    String? actionUrl,
    String? request,
    String? response,
    String? responseType,
    AIPromptEntity? promptType,
    double? requestDuration,
    double? promptToken,
    double? cost,
    UserEntity? createdBy,
    DateTime? createdDate,
    DateTime? lastUpdatedDate,
    DateTime? deletedAt,
  }) {
    return AIIntegrationLogsEntity(
      id: id ?? this.id,
      actionUrl: actionUrl ?? this.actionUrl,
      request: request ?? this.request,
      response: response ?? this.response,
      responseType: responseType ?? this.responseType,
      promptType: promptType ?? this.promptType,
      requestDuration: requestDuration ?? this.requestDuration,
      promptToken: promptToken ?? this.promptToken,
      cost: cost ?? this.cost,
      createdBy: createdBy ?? this.createdBy,
      createdDate: createdDate ?? this.createdDate,
      lastUpdatedDate: lastUpdatedDate ?? this.lastUpdatedDate,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }

  AIIntegrationLogsEntity copyWithWrapped({
    Wrapped<double>? id,
    Wrapped<String>? actionUrl,
    Wrapped<String>? request,
    Wrapped<String>? response,
    Wrapped<String>? responseType,
    Wrapped<AIPromptEntity>? promptType,
    Wrapped<double>? requestDuration,
    Wrapped<double>? promptToken,
    Wrapped<double>? cost,
    Wrapped<UserEntity?>? createdBy,
    Wrapped<DateTime>? createdDate,
    Wrapped<DateTime>? lastUpdatedDate,
    Wrapped<DateTime?>? deletedAt,
  }) {
    return AIIntegrationLogsEntity(
      id: (id != null ? id.value : this.id),
      actionUrl: (actionUrl != null ? actionUrl.value : this.actionUrl),
      request: (request != null ? request.value : this.request),
      response: (response != null ? response.value : this.response),
      responseType:
          (responseType != null ? responseType.value : this.responseType),
      promptType: (promptType != null ? promptType.value : this.promptType),
      requestDuration:
          (requestDuration != null
              ? requestDuration.value
              : this.requestDuration),
      promptToken: (promptToken != null ? promptToken.value : this.promptToken),
      cost: (cost != null ? cost.value : this.cost),
      createdBy: (createdBy != null ? createdBy.value : this.createdBy),
      createdDate: (createdDate != null ? createdDate.value : this.createdDate),
      lastUpdatedDate:
          (lastUpdatedDate != null
              ? lastUpdatedDate.value
              : this.lastUpdatedDate),
      deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserMealLogEntity {
  const UserMealLogEntity({
    this.id,
    this.mealImage,
    this.mealType,
    this.isComplete,
    this.dateOfMeal,
    this.mealName,
    this.weight,
    this.calories,
    this.protein,
    this.fats,
    this.carbs,
    this.mealLevel,
    this.comments,
    this.promptLog,
    this.createdBy,
    this.createdDate,
    this.lastUpdatedDate,
    this.deletedAt,
  });

  factory UserMealLogEntity.fromJson(Map<String, dynamic> json) =>
      _$UserMealLogEntityFromJson(json);

  static const toJsonFactory = _$UserMealLogEntityToJson;
  Map<String, dynamic> toJson() => _$UserMealLogEntityToJson(this);

  @JsonKey(name: 'id')
  final double? id;
  @JsonKey(name: 'mealImage')
  final String? mealImage;
  @JsonKey(name: 'mealType')
  final String? mealType;
  @JsonKey(name: 'isComplete')
  final bool? isComplete;
  @JsonKey(name: 'dateOfMeal')
  final DateTime? dateOfMeal;
  @JsonKey(name: 'mealName')
  final String? mealName;
  @JsonKey(name: 'weight')
  final double? weight;
  @JsonKey(name: 'calories')
  final double? calories;
  @JsonKey(name: 'protein')
  final double? protein;
  @JsonKey(name: 'fats')
  final double? fats;
  @JsonKey(name: 'carbs')
  final double? carbs;
  @JsonKey(name: 'mealLevel')
  final double? mealLevel;
  @JsonKey(name: 'comments')
  final String? comments;
  @JsonKey(name: 'promptLog')
  final AIIntegrationLogsEntity? promptLog;
  @JsonKey(name: 'createdBy')
  final UserEntity? createdBy;
  @JsonKey(name: 'createdDate')
  final DateTime? createdDate;
  @JsonKey(name: 'lastUpdatedDate')
  final DateTime? lastUpdatedDate;
  @JsonKey(name: 'deletedAt')
  final DateTime? deletedAt;
  static const fromJsonFactory = _$UserMealLogEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserMealLogEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.mealImage, mealImage) ||
                const DeepCollectionEquality().equals(
                  other.mealImage,
                  mealImage,
                )) &&
            (identical(other.mealType, mealType) ||
                const DeepCollectionEquality().equals(
                  other.mealType,
                  mealType,
                )) &&
            (identical(other.isComplete, isComplete) ||
                const DeepCollectionEquality().equals(
                  other.isComplete,
                  isComplete,
                )) &&
            (identical(other.dateOfMeal, dateOfMeal) ||
                const DeepCollectionEquality().equals(
                  other.dateOfMeal,
                  dateOfMeal,
                )) &&
            (identical(other.mealName, mealName) ||
                const DeepCollectionEquality().equals(
                  other.mealName,
                  mealName,
                )) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.calories, calories) ||
                const DeepCollectionEquality().equals(
                  other.calories,
                  calories,
                )) &&
            (identical(other.protein, protein) ||
                const DeepCollectionEquality().equals(
                  other.protein,
                  protein,
                )) &&
            (identical(other.fats, fats) ||
                const DeepCollectionEquality().equals(other.fats, fats)) &&
            (identical(other.carbs, carbs) ||
                const DeepCollectionEquality().equals(other.carbs, carbs)) &&
            (identical(other.mealLevel, mealLevel) ||
                const DeepCollectionEquality().equals(
                  other.mealLevel,
                  mealLevel,
                )) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality().equals(
                  other.comments,
                  comments,
                )) &&
            (identical(other.promptLog, promptLog) ||
                const DeepCollectionEquality().equals(
                  other.promptLog,
                  promptLog,
                )) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality().equals(
                  other.createdBy,
                  createdBy,
                )) &&
            (identical(other.createdDate, createdDate) ||
                const DeepCollectionEquality().equals(
                  other.createdDate,
                  createdDate,
                )) &&
            (identical(other.lastUpdatedDate, lastUpdatedDate) ||
                const DeepCollectionEquality().equals(
                  other.lastUpdatedDate,
                  lastUpdatedDate,
                )) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality().equals(
                  other.deletedAt,
                  deletedAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(mealImage) ^
      const DeepCollectionEquality().hash(mealType) ^
      const DeepCollectionEquality().hash(isComplete) ^
      const DeepCollectionEquality().hash(dateOfMeal) ^
      const DeepCollectionEquality().hash(mealName) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(calories) ^
      const DeepCollectionEquality().hash(protein) ^
      const DeepCollectionEquality().hash(fats) ^
      const DeepCollectionEquality().hash(carbs) ^
      const DeepCollectionEquality().hash(mealLevel) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(promptLog) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdDate) ^
      const DeepCollectionEquality().hash(lastUpdatedDate) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      runtimeType.hashCode;
}

extension $UserMealLogEntityExtension on UserMealLogEntity {
  UserMealLogEntity copyWith({
    double? id,
    String? mealImage,
    String? mealType,
    bool? isComplete,
    DateTime? dateOfMeal,
    String? mealName,
    double? weight,
    double? calories,
    double? protein,
    double? fats,
    double? carbs,
    double? mealLevel,
    String? comments,
    AIIntegrationLogsEntity? promptLog,
    UserEntity? createdBy,
    DateTime? createdDate,
    DateTime? lastUpdatedDate,
    DateTime? deletedAt,
  }) {
    return UserMealLogEntity(
      id: id ?? this.id,
      mealImage: mealImage ?? this.mealImage,
      mealType: mealType ?? this.mealType,
      isComplete: isComplete ?? this.isComplete,
      dateOfMeal: dateOfMeal ?? this.dateOfMeal,
      mealName: mealName ?? this.mealName,
      weight: weight ?? this.weight,
      calories: calories ?? this.calories,
      protein: protein ?? this.protein,
      fats: fats ?? this.fats,
      carbs: carbs ?? this.carbs,
      mealLevel: mealLevel ?? this.mealLevel,
      comments: comments ?? this.comments,
      promptLog: promptLog ?? this.promptLog,
      createdBy: createdBy ?? this.createdBy,
      createdDate: createdDate ?? this.createdDate,
      lastUpdatedDate: lastUpdatedDate ?? this.lastUpdatedDate,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }

  UserMealLogEntity copyWithWrapped({
    Wrapped<double?>? id,
    Wrapped<String?>? mealImage,
    Wrapped<String?>? mealType,
    Wrapped<bool?>? isComplete,
    Wrapped<DateTime?>? dateOfMeal,
    Wrapped<String?>? mealName,
    Wrapped<double?>? weight,
    Wrapped<double?>? calories,
    Wrapped<double?>? protein,
    Wrapped<double?>? fats,
    Wrapped<double?>? carbs,
    Wrapped<double?>? mealLevel,
    Wrapped<String?>? comments,
    Wrapped<AIIntegrationLogsEntity?>? promptLog,
    Wrapped<UserEntity?>? createdBy,
    Wrapped<DateTime?>? createdDate,
    Wrapped<DateTime?>? lastUpdatedDate,
    Wrapped<DateTime?>? deletedAt,
  }) {
    return UserMealLogEntity(
      id: (id != null ? id.value : this.id),
      mealImage: (mealImage != null ? mealImage.value : this.mealImage),
      mealType: (mealType != null ? mealType.value : this.mealType),
      isComplete: (isComplete != null ? isComplete.value : this.isComplete),
      dateOfMeal: (dateOfMeal != null ? dateOfMeal.value : this.dateOfMeal),
      mealName: (mealName != null ? mealName.value : this.mealName),
      weight: (weight != null ? weight.value : this.weight),
      calories: (calories != null ? calories.value : this.calories),
      protein: (protein != null ? protein.value : this.protein),
      fats: (fats != null ? fats.value : this.fats),
      carbs: (carbs != null ? carbs.value : this.carbs),
      mealLevel: (mealLevel != null ? mealLevel.value : this.mealLevel),
      comments: (comments != null ? comments.value : this.comments),
      promptLog: (promptLog != null ? promptLog.value : this.promptLog),
      createdBy: (createdBy != null ? createdBy.value : this.createdBy),
      createdDate: (createdDate != null ? createdDate.value : this.createdDate),
      lastUpdatedDate:
          (lastUpdatedDate != null
              ? lastUpdatedDate.value
              : this.lastUpdatedDate),
      deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateManyUserMealLogEntityDto {
  const CreateManyUserMealLogEntityDto({required this.bulk});

  factory CreateManyUserMealLogEntityDto.fromJson(Map<String, dynamic> json) =>
      _$CreateManyUserMealLogEntityDtoFromJson(json);

  static const toJsonFactory = _$CreateManyUserMealLogEntityDtoToJson;
  Map<String, dynamic> toJson() => _$CreateManyUserMealLogEntityDtoToJson(this);

  @JsonKey(name: 'bulk', defaultValue: <UserMealLogEntity>[])
  final List<UserMealLogEntity> bulk;
  static const fromJsonFactory = _$CreateManyUserMealLogEntityDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateManyUserMealLogEntityDto &&
            (identical(other.bulk, bulk) ||
                const DeepCollectionEquality().equals(other.bulk, bulk)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(bulk) ^ runtimeType.hashCode;
}

extension $CreateManyUserMealLogEntityDtoExtension
    on CreateManyUserMealLogEntityDto {
  CreateManyUserMealLogEntityDto copyWith({List<UserMealLogEntity>? bulk}) {
    return CreateManyUserMealLogEntityDto(bulk: bulk ?? this.bulk);
  }

  CreateManyUserMealLogEntityDto copyWithWrapped({
    Wrapped<List<UserMealLogEntity>>? bulk,
  }) {
    return CreateManyUserMealLogEntityDto(
      bulk: (bulk != null ? bulk.value : this.bulk),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateAIIntegrationLogDto {
  const CreateAIIntegrationLogDto({
    required this.actionUrl,
    required this.request,
    required this.response,
    required this.responseType,
    this.requestDuration,
    required this.promptToken,
    this.cost,
    this.promptTypeId,
    this.createdById,
  });

  factory CreateAIIntegrationLogDto.fromJson(Map<String, dynamic> json) =>
      _$CreateAIIntegrationLogDtoFromJson(json);

  static const toJsonFactory = _$CreateAIIntegrationLogDtoToJson;
  Map<String, dynamic> toJson() => _$CreateAIIntegrationLogDtoToJson(this);

  @JsonKey(name: 'actionUrl')
  final String actionUrl;
  @JsonKey(name: 'request')
  final String request;
  @JsonKey(name: 'response')
  final String response;
  @JsonKey(name: 'responseType')
  final String responseType;
  @JsonKey(name: 'requestDuration')
  final double? requestDuration;
  @JsonKey(name: 'promptToken')
  final double promptToken;
  @JsonKey(name: 'cost')
  final double? cost;
  @JsonKey(name: 'promptTypeId')
  final double? promptTypeId;
  @JsonKey(name: 'createdById')
  final double? createdById;
  static const fromJsonFactory = _$CreateAIIntegrationLogDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateAIIntegrationLogDto &&
            (identical(other.actionUrl, actionUrl) ||
                const DeepCollectionEquality().equals(
                  other.actionUrl,
                  actionUrl,
                )) &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(
                  other.request,
                  request,
                )) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality().equals(
                  other.response,
                  response,
                )) &&
            (identical(other.responseType, responseType) ||
                const DeepCollectionEquality().equals(
                  other.responseType,
                  responseType,
                )) &&
            (identical(other.requestDuration, requestDuration) ||
                const DeepCollectionEquality().equals(
                  other.requestDuration,
                  requestDuration,
                )) &&
            (identical(other.promptToken, promptToken) ||
                const DeepCollectionEquality().equals(
                  other.promptToken,
                  promptToken,
                )) &&
            (identical(other.cost, cost) ||
                const DeepCollectionEquality().equals(other.cost, cost)) &&
            (identical(other.promptTypeId, promptTypeId) ||
                const DeepCollectionEquality().equals(
                  other.promptTypeId,
                  promptTypeId,
                )) &&
            (identical(other.createdById, createdById) ||
                const DeepCollectionEquality().equals(
                  other.createdById,
                  createdById,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(actionUrl) ^
      const DeepCollectionEquality().hash(request) ^
      const DeepCollectionEquality().hash(response) ^
      const DeepCollectionEquality().hash(responseType) ^
      const DeepCollectionEquality().hash(requestDuration) ^
      const DeepCollectionEquality().hash(promptToken) ^
      const DeepCollectionEquality().hash(cost) ^
      const DeepCollectionEquality().hash(promptTypeId) ^
      const DeepCollectionEquality().hash(createdById) ^
      runtimeType.hashCode;
}

extension $CreateAIIntegrationLogDtoExtension on CreateAIIntegrationLogDto {
  CreateAIIntegrationLogDto copyWith({
    String? actionUrl,
    String? request,
    String? response,
    String? responseType,
    double? requestDuration,
    double? promptToken,
    double? cost,
    double? promptTypeId,
    double? createdById,
  }) {
    return CreateAIIntegrationLogDto(
      actionUrl: actionUrl ?? this.actionUrl,
      request: request ?? this.request,
      response: response ?? this.response,
      responseType: responseType ?? this.responseType,
      requestDuration: requestDuration ?? this.requestDuration,
      promptToken: promptToken ?? this.promptToken,
      cost: cost ?? this.cost,
      promptTypeId: promptTypeId ?? this.promptTypeId,
      createdById: createdById ?? this.createdById,
    );
  }

  CreateAIIntegrationLogDto copyWithWrapped({
    Wrapped<String>? actionUrl,
    Wrapped<String>? request,
    Wrapped<String>? response,
    Wrapped<String>? responseType,
    Wrapped<double?>? requestDuration,
    Wrapped<double>? promptToken,
    Wrapped<double?>? cost,
    Wrapped<double?>? promptTypeId,
    Wrapped<double?>? createdById,
  }) {
    return CreateAIIntegrationLogDto(
      actionUrl: (actionUrl != null ? actionUrl.value : this.actionUrl),
      request: (request != null ? request.value : this.request),
      response: (response != null ? response.value : this.response),
      responseType:
          (responseType != null ? responseType.value : this.responseType),
      requestDuration:
          (requestDuration != null
              ? requestDuration.value
              : this.requestDuration),
      promptToken: (promptToken != null ? promptToken.value : this.promptToken),
      cost: (cost != null ? cost.value : this.cost),
      promptTypeId:
          (promptTypeId != null ? promptTypeId.value : this.promptTypeId),
      createdById: (createdById != null ? createdById.value : this.createdById),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateManyAIIntegrationLogsEntityDto {
  const CreateManyAIIntegrationLogsEntityDto({required this.bulk});

  factory CreateManyAIIntegrationLogsEntityDto.fromJson(
    Map<String, dynamic> json,
  ) => _$CreateManyAIIntegrationLogsEntityDtoFromJson(json);

  static const toJsonFactory = _$CreateManyAIIntegrationLogsEntityDtoToJson;
  Map<String, dynamic> toJson() =>
      _$CreateManyAIIntegrationLogsEntityDtoToJson(this);

  @JsonKey(name: 'bulk', defaultValue: <CreateAIIntegrationLogDto>[])
  final List<CreateAIIntegrationLogDto> bulk;
  static const fromJsonFactory = _$CreateManyAIIntegrationLogsEntityDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateManyAIIntegrationLogsEntityDto &&
            (identical(other.bulk, bulk) ||
                const DeepCollectionEquality().equals(other.bulk, bulk)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(bulk) ^ runtimeType.hashCode;
}

extension $CreateManyAIIntegrationLogsEntityDtoExtension
    on CreateManyAIIntegrationLogsEntityDto {
  CreateManyAIIntegrationLogsEntityDto copyWith({
    List<CreateAIIntegrationLogDto>? bulk,
  }) {
    return CreateManyAIIntegrationLogsEntityDto(bulk: bulk ?? this.bulk);
  }

  CreateManyAIIntegrationLogsEntityDto copyWithWrapped({
    Wrapped<List<CreateAIIntegrationLogDto>>? bulk,
  }) {
    return CreateManyAIIntegrationLogsEntityDto(
      bulk: (bulk != null ? bulk.value : this.bulk),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateAIIntegrationLogDto {
  const UpdateAIIntegrationLogDto();

  factory UpdateAIIntegrationLogDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateAIIntegrationLogDtoFromJson(json);

  static const toJsonFactory = _$UpdateAIIntegrationLogDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateAIIntegrationLogDtoToJson(this);

  static const fromJsonFactory = _$UpdateAIIntegrationLogDtoFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class SignUpDto {
  const SignUpDto({
    required this.name,
    required this.emailAddress,
    required this.mobileNumber,
    required this.password,
  });

  factory SignUpDto.fromJson(Map<String, dynamic> json) =>
      _$SignUpDtoFromJson(json);

  static const toJsonFactory = _$SignUpDtoToJson;
  Map<String, dynamic> toJson() => _$SignUpDtoToJson(this);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'emailAddress')
  final String emailAddress;
  @JsonKey(name: 'mobileNumber')
  final String mobileNumber;
  @JsonKey(name: 'password')
  final String password;
  static const fromJsonFactory = _$SignUpDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SignUpDto &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality().equals(
                  other.emailAddress,
                  emailAddress,
                )) &&
            (identical(other.mobileNumber, mobileNumber) ||
                const DeepCollectionEquality().equals(
                  other.mobileNumber,
                  mobileNumber,
                )) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality().equals(
                  other.password,
                  password,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(mobileNumber) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $SignUpDtoExtension on SignUpDto {
  SignUpDto copyWith({
    String? name,
    String? emailAddress,
    String? mobileNumber,
    String? password,
  }) {
    return SignUpDto(
      name: name ?? this.name,
      emailAddress: emailAddress ?? this.emailAddress,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      password: password ?? this.password,
    );
  }

  SignUpDto copyWithWrapped({
    Wrapped<String>? name,
    Wrapped<String>? emailAddress,
    Wrapped<String>? mobileNumber,
    Wrapped<String>? password,
  }) {
    return SignUpDto(
      name: (name != null ? name.value : this.name),
      emailAddress:
          (emailAddress != null ? emailAddress.value : this.emailAddress),
      mobileNumber:
          (mobileNumber != null ? mobileNumber.value : this.mobileNumber),
      password: (password != null ? password.value : this.password),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class GetManyUserEntityResponseDto {
  const GetManyUserEntityResponseDto({
    required this.data,
    required this.count,
    required this.total,
    required this.page,
    required this.pageCount,
  });

  factory GetManyUserEntityResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GetManyUserEntityResponseDtoFromJson(json);

  static const toJsonFactory = _$GetManyUserEntityResponseDtoToJson;
  Map<String, dynamic> toJson() => _$GetManyUserEntityResponseDtoToJson(this);

  @JsonKey(name: 'data', defaultValue: <UserEntity>[])
  final List<UserEntity> data;
  @JsonKey(name: 'count')
  final double count;
  @JsonKey(name: 'total')
  final double total;
  @JsonKey(name: 'page')
  final double page;
  @JsonKey(name: 'pageCount')
  final double pageCount;
  static const fromJsonFactory = _$GetManyUserEntityResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is GetManyUserEntityResponseDto &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.pageCount, pageCount) ||
                const DeepCollectionEquality().equals(
                  other.pageCount,
                  pageCount,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(pageCount) ^
      runtimeType.hashCode;
}

extension $GetManyUserEntityResponseDtoExtension
    on GetManyUserEntityResponseDto {
  GetManyUserEntityResponseDto copyWith({
    List<UserEntity>? data,
    double? count,
    double? total,
    double? page,
    double? pageCount,
  }) {
    return GetManyUserEntityResponseDto(
      data: data ?? this.data,
      count: count ?? this.count,
      total: total ?? this.total,
      page: page ?? this.page,
      pageCount: pageCount ?? this.pageCount,
    );
  }

  GetManyUserEntityResponseDto copyWithWrapped({
    Wrapped<List<UserEntity>>? data,
    Wrapped<double>? count,
    Wrapped<double>? total,
    Wrapped<double>? page,
    Wrapped<double>? pageCount,
  }) {
    return GetManyUserEntityResponseDto(
      data: (data != null ? data.value : this.data),
      count: (count != null ? count.value : this.count),
      total: (total != null ? total.value : this.total),
      page: (page != null ? page.value : this.page),
      pageCount: (pageCount != null ? pageCount.value : this.pageCount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class LoginDto {
  const LoginDto({required this.emailAddress, required this.password});

  factory LoginDto.fromJson(Map<String, dynamic> json) =>
      _$LoginDtoFromJson(json);

  static const toJsonFactory = _$LoginDtoToJson;
  Map<String, dynamic> toJson() => _$LoginDtoToJson(this);

  @JsonKey(name: 'emailAddress')
  final String emailAddress;
  @JsonKey(name: 'password')
  final String password;
  static const fromJsonFactory = _$LoginDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LoginDto &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality().equals(
                  other.emailAddress,
                  emailAddress,
                )) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality().equals(
                  other.password,
                  password,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $LoginDtoExtension on LoginDto {
  LoginDto copyWith({String? emailAddress, String? password}) {
    return LoginDto(
      emailAddress: emailAddress ?? this.emailAddress,
      password: password ?? this.password,
    );
  }

  LoginDto copyWithWrapped({
    Wrapped<String>? emailAddress,
    Wrapped<String>? password,
  }) {
    return LoginDto(
      emailAddress:
          (emailAddress != null ? emailAddress.value : this.emailAddress),
      password: (password != null ? password.value : this.password),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserSessionDto {
  const UserSessionDto({
    required this.id,
    required this.name,
    required this.emailAddress,
    required this.mobileNumber,
    required this.accountStatus,
    this.subscriptionId,
  });

  factory UserSessionDto.fromJson(Map<String, dynamic> json) =>
      _$UserSessionDtoFromJson(json);

  static const toJsonFactory = _$UserSessionDtoToJson;
  Map<String, dynamic> toJson() => _$UserSessionDtoToJson(this);

  @JsonKey(name: 'id')
  final Object id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'emailAddress')
  final String emailAddress;
  @JsonKey(name: 'mobileNumber')
  final String mobileNumber;
  @JsonKey(name: 'accountStatus')
  final double accountStatus;
  @JsonKey(name: 'subscriptionId')
  final double? subscriptionId;
  static const fromJsonFactory = _$UserSessionDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserSessionDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality().equals(
                  other.emailAddress,
                  emailAddress,
                )) &&
            (identical(other.mobileNumber, mobileNumber) ||
                const DeepCollectionEquality().equals(
                  other.mobileNumber,
                  mobileNumber,
                )) &&
            (identical(other.accountStatus, accountStatus) ||
                const DeepCollectionEquality().equals(
                  other.accountStatus,
                  accountStatus,
                )) &&
            (identical(other.subscriptionId, subscriptionId) ||
                const DeepCollectionEquality().equals(
                  other.subscriptionId,
                  subscriptionId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(mobileNumber) ^
      const DeepCollectionEquality().hash(accountStatus) ^
      const DeepCollectionEquality().hash(subscriptionId) ^
      runtimeType.hashCode;
}

extension $UserSessionDtoExtension on UserSessionDto {
  UserSessionDto copyWith({
    Object? id,
    String? name,
    String? emailAddress,
    String? mobileNumber,
    double? accountStatus,
    double? subscriptionId,
  }) {
    return UserSessionDto(
      id: id ?? this.id,
      name: name ?? this.name,
      emailAddress: emailAddress ?? this.emailAddress,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      accountStatus: accountStatus ?? this.accountStatus,
      subscriptionId: subscriptionId ?? this.subscriptionId,
    );
  }

  UserSessionDto copyWithWrapped({
    Wrapped<Object>? id,
    Wrapped<String>? name,
    Wrapped<String>? emailAddress,
    Wrapped<String>? mobileNumber,
    Wrapped<double>? accountStatus,
    Wrapped<double?>? subscriptionId,
  }) {
    return UserSessionDto(
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
      emailAddress:
          (emailAddress != null ? emailAddress.value : this.emailAddress),
      mobileNumber:
          (mobileNumber != null ? mobileNumber.value : this.mobileNumber),
      accountStatus:
          (accountStatus != null ? accountStatus.value : this.accountStatus),
      subscriptionId:
          (subscriptionId != null ? subscriptionId.value : this.subscriptionId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class LoginResponseDto {
  const LoginResponseDto({required this.user});

  factory LoginResponseDto.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDtoFromJson(json);

  static const toJsonFactory = _$LoginResponseDtoToJson;
  Map<String, dynamic> toJson() => _$LoginResponseDtoToJson(this);

  @JsonKey(name: 'user')
  final UserSessionDto user;
  static const fromJsonFactory = _$LoginResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LoginResponseDto &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^ runtimeType.hashCode;
}

extension $LoginResponseDtoExtension on LoginResponseDto {
  LoginResponseDto copyWith({UserSessionDto? user}) {
    return LoginResponseDto(user: user ?? this.user);
  }

  LoginResponseDto copyWithWrapped({Wrapped<UserSessionDto>? user}) {
    return LoginResponseDto(user: (user != null ? user.value : this.user));
  }
}

@JsonSerializable(explicitToJson: true)
class TestDto {
  const TestDto({this.bio});

  factory TestDto.fromJson(Map<String, dynamic> json) =>
      _$TestDtoFromJson(json);

  static const toJsonFactory = _$TestDtoToJson;
  Map<String, dynamic> toJson() => _$TestDtoToJson(this);

  @JsonKey(name: 'bio')
  final String? bio;
  static const fromJsonFactory = _$TestDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TestDto &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(bio) ^ runtimeType.hashCode;
}

extension $TestDtoExtension on TestDto {
  TestDto copyWith({String? bio}) {
    return TestDto(bio: bio ?? this.bio);
  }

  TestDto copyWithWrapped({Wrapped<String?>? bio}) {
    return TestDto(bio: (bio != null ? bio.value : this.bio));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateUserDto {
  const CreateUserDto({
    required this.name,
    required this.emailAddress,
    required this.mobileNumber,
    required this.password,
    this.passwordResetCode,
    required this.accountStatus,
    required this.createdBy,
    required this.lastUpdatedBy,
    this.subscriptionId,
  });

  factory CreateUserDto.fromJson(Map<String, dynamic> json) =>
      _$CreateUserDtoFromJson(json);

  static const toJsonFactory = _$CreateUserDtoToJson;
  Map<String, dynamic> toJson() => _$CreateUserDtoToJson(this);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'emailAddress')
  final String emailAddress;
  @JsonKey(name: 'mobileNumber')
  final String mobileNumber;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'passwordResetCode')
  final String? passwordResetCode;
  @JsonKey(name: 'accountStatus')
  final double accountStatus;
  @JsonKey(name: 'createdBy')
  final String createdBy;
  @JsonKey(name: 'lastUpdatedBy')
  final String lastUpdatedBy;
  @JsonKey(name: 'subscriptionId')
  final double? subscriptionId;
  static const fromJsonFactory = _$CreateUserDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateUserDto &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality().equals(
                  other.emailAddress,
                  emailAddress,
                )) &&
            (identical(other.mobileNumber, mobileNumber) ||
                const DeepCollectionEquality().equals(
                  other.mobileNumber,
                  mobileNumber,
                )) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality().equals(
                  other.password,
                  password,
                )) &&
            (identical(other.passwordResetCode, passwordResetCode) ||
                const DeepCollectionEquality().equals(
                  other.passwordResetCode,
                  passwordResetCode,
                )) &&
            (identical(other.accountStatus, accountStatus) ||
                const DeepCollectionEquality().equals(
                  other.accountStatus,
                  accountStatus,
                )) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality().equals(
                  other.createdBy,
                  createdBy,
                )) &&
            (identical(other.lastUpdatedBy, lastUpdatedBy) ||
                const DeepCollectionEquality().equals(
                  other.lastUpdatedBy,
                  lastUpdatedBy,
                )) &&
            (identical(other.subscriptionId, subscriptionId) ||
                const DeepCollectionEquality().equals(
                  other.subscriptionId,
                  subscriptionId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(mobileNumber) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(passwordResetCode) ^
      const DeepCollectionEquality().hash(accountStatus) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(lastUpdatedBy) ^
      const DeepCollectionEquality().hash(subscriptionId) ^
      runtimeType.hashCode;
}

extension $CreateUserDtoExtension on CreateUserDto {
  CreateUserDto copyWith({
    String? name,
    String? emailAddress,
    String? mobileNumber,
    String? password,
    String? passwordResetCode,
    double? accountStatus,
    String? createdBy,
    String? lastUpdatedBy,
    double? subscriptionId,
  }) {
    return CreateUserDto(
      name: name ?? this.name,
      emailAddress: emailAddress ?? this.emailAddress,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      password: password ?? this.password,
      passwordResetCode: passwordResetCode ?? this.passwordResetCode,
      accountStatus: accountStatus ?? this.accountStatus,
      createdBy: createdBy ?? this.createdBy,
      lastUpdatedBy: lastUpdatedBy ?? this.lastUpdatedBy,
      subscriptionId: subscriptionId ?? this.subscriptionId,
    );
  }

  CreateUserDto copyWithWrapped({
    Wrapped<String>? name,
    Wrapped<String>? emailAddress,
    Wrapped<String>? mobileNumber,
    Wrapped<String>? password,
    Wrapped<String?>? passwordResetCode,
    Wrapped<double>? accountStatus,
    Wrapped<String>? createdBy,
    Wrapped<String>? lastUpdatedBy,
    Wrapped<double?>? subscriptionId,
  }) {
    return CreateUserDto(
      name: (name != null ? name.value : this.name),
      emailAddress:
          (emailAddress != null ? emailAddress.value : this.emailAddress),
      mobileNumber:
          (mobileNumber != null ? mobileNumber.value : this.mobileNumber),
      password: (password != null ? password.value : this.password),
      passwordResetCode:
          (passwordResetCode != null
              ? passwordResetCode.value
              : this.passwordResetCode),
      accountStatus:
          (accountStatus != null ? accountStatus.value : this.accountStatus),
      createdBy: (createdBy != null ? createdBy.value : this.createdBy),
      lastUpdatedBy:
          (lastUpdatedBy != null ? lastUpdatedBy.value : this.lastUpdatedBy),
      subscriptionId:
          (subscriptionId != null ? subscriptionId.value : this.subscriptionId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateManyUserEntityDto {
  const CreateManyUserEntityDto({required this.bulk});

  factory CreateManyUserEntityDto.fromJson(Map<String, dynamic> json) =>
      _$CreateManyUserEntityDtoFromJson(json);

  static const toJsonFactory = _$CreateManyUserEntityDtoToJson;
  Map<String, dynamic> toJson() => _$CreateManyUserEntityDtoToJson(this);

  @JsonKey(name: 'bulk', defaultValue: <CreateUserDto>[])
  final List<CreateUserDto> bulk;
  static const fromJsonFactory = _$CreateManyUserEntityDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateManyUserEntityDto &&
            (identical(other.bulk, bulk) ||
                const DeepCollectionEquality().equals(other.bulk, bulk)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(bulk) ^ runtimeType.hashCode;
}

extension $CreateManyUserEntityDtoExtension on CreateManyUserEntityDto {
  CreateManyUserEntityDto copyWith({List<CreateUserDto>? bulk}) {
    return CreateManyUserEntityDto(bulk: bulk ?? this.bulk);
  }

  CreateManyUserEntityDto copyWithWrapped({
    Wrapped<List<CreateUserDto>>? bulk,
  }) {
    return CreateManyUserEntityDto(
      bulk: (bulk != null ? bulk.value : this.bulk),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateUserDto {
  const UpdateUserDto();

  factory UpdateUserDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserDtoFromJson(json);

  static const toJsonFactory = _$UpdateUserDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateUserDtoToJson(this);

  static const fromJsonFactory = _$UpdateUserDtoFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class GetManyUserMealQuestionsEntityResponseDto {
  const GetManyUserMealQuestionsEntityResponseDto({
    required this.data,
    required this.count,
    required this.total,
    required this.page,
    required this.pageCount,
  });

  factory GetManyUserMealQuestionsEntityResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$GetManyUserMealQuestionsEntityResponseDtoFromJson(json);

  static const toJsonFactory =
      _$GetManyUserMealQuestionsEntityResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$GetManyUserMealQuestionsEntityResponseDtoToJson(this);

  @JsonKey(name: 'data', defaultValue: <UserMealQuestionsEntity>[])
  final List<UserMealQuestionsEntity> data;
  @JsonKey(name: 'count')
  final double count;
  @JsonKey(name: 'total')
  final double total;
  @JsonKey(name: 'page')
  final double page;
  @JsonKey(name: 'pageCount')
  final double pageCount;
  static const fromJsonFactory =
      _$GetManyUserMealQuestionsEntityResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is GetManyUserMealQuestionsEntityResponseDto &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.pageCount, pageCount) ||
                const DeepCollectionEquality().equals(
                  other.pageCount,
                  pageCount,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(pageCount) ^
      runtimeType.hashCode;
}

extension $GetManyUserMealQuestionsEntityResponseDtoExtension
    on GetManyUserMealQuestionsEntityResponseDto {
  GetManyUserMealQuestionsEntityResponseDto copyWith({
    List<UserMealQuestionsEntity>? data,
    double? count,
    double? total,
    double? page,
    double? pageCount,
  }) {
    return GetManyUserMealQuestionsEntityResponseDto(
      data: data ?? this.data,
      count: count ?? this.count,
      total: total ?? this.total,
      page: page ?? this.page,
      pageCount: pageCount ?? this.pageCount,
    );
  }

  GetManyUserMealQuestionsEntityResponseDto copyWithWrapped({
    Wrapped<List<UserMealQuestionsEntity>>? data,
    Wrapped<double>? count,
    Wrapped<double>? total,
    Wrapped<double>? page,
    Wrapped<double>? pageCount,
  }) {
    return GetManyUserMealQuestionsEntityResponseDto(
      data: (data != null ? data.value : this.data),
      count: (count != null ? count.value : this.count),
      total: (total != null ? total.value : this.total),
      page: (page != null ? page.value : this.page),
      pageCount: (pageCount != null ? pageCount.value : this.pageCount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserMealQuestionsEntity {
  const UserMealQuestionsEntity({
    required this.id,
    required this.question,
    required this.options,
    required this.answer,
    required this.userMealLog,
    required this.createdDate,
    required this.lastUpdatedDate,
    this.deletedAt,
  });

  factory UserMealQuestionsEntity.fromJson(Map<String, dynamic> json) =>
      _$UserMealQuestionsEntityFromJson(json);

  static const toJsonFactory = _$UserMealQuestionsEntityToJson;
  Map<String, dynamic> toJson() => _$UserMealQuestionsEntityToJson(this);

  @JsonKey(name: 'id')
  final double id;
  @JsonKey(name: 'question')
  final String question;
  @JsonKey(name: 'options', defaultValue: <String>[])
  final List<String> options;
  @JsonKey(name: 'answer')
  final String answer;
  @JsonKey(name: 'userMealLog')
  final UserMealLogEntity userMealLog;
  @JsonKey(name: 'createdDate')
  final DateTime createdDate;
  @JsonKey(name: 'lastUpdatedDate')
  final DateTime lastUpdatedDate;
  @JsonKey(name: 'deletedAt')
  final DateTime? deletedAt;
  static const fromJsonFactory = _$UserMealQuestionsEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserMealQuestionsEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.question, question) ||
                const DeepCollectionEquality().equals(
                  other.question,
                  question,
                )) &&
            (identical(other.options, options) ||
                const DeepCollectionEquality().equals(
                  other.options,
                  options,
                )) &&
            (identical(other.answer, answer) ||
                const DeepCollectionEquality().equals(other.answer, answer)) &&
            (identical(other.userMealLog, userMealLog) ||
                const DeepCollectionEquality().equals(
                  other.userMealLog,
                  userMealLog,
                )) &&
            (identical(other.createdDate, createdDate) ||
                const DeepCollectionEquality().equals(
                  other.createdDate,
                  createdDate,
                )) &&
            (identical(other.lastUpdatedDate, lastUpdatedDate) ||
                const DeepCollectionEquality().equals(
                  other.lastUpdatedDate,
                  lastUpdatedDate,
                )) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality().equals(
                  other.deletedAt,
                  deletedAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(question) ^
      const DeepCollectionEquality().hash(options) ^
      const DeepCollectionEquality().hash(answer) ^
      const DeepCollectionEquality().hash(userMealLog) ^
      const DeepCollectionEquality().hash(createdDate) ^
      const DeepCollectionEquality().hash(lastUpdatedDate) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      runtimeType.hashCode;
}

extension $UserMealQuestionsEntityExtension on UserMealQuestionsEntity {
  UserMealQuestionsEntity copyWith({
    double? id,
    String? question,
    List<String>? options,
    String? answer,
    UserMealLogEntity? userMealLog,
    DateTime? createdDate,
    DateTime? lastUpdatedDate,
    DateTime? deletedAt,
  }) {
    return UserMealQuestionsEntity(
      id: id ?? this.id,
      question: question ?? this.question,
      options: options ?? this.options,
      answer: answer ?? this.answer,
      userMealLog: userMealLog ?? this.userMealLog,
      createdDate: createdDate ?? this.createdDate,
      lastUpdatedDate: lastUpdatedDate ?? this.lastUpdatedDate,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }

  UserMealQuestionsEntity copyWithWrapped({
    Wrapped<double>? id,
    Wrapped<String>? question,
    Wrapped<List<String>>? options,
    Wrapped<String>? answer,
    Wrapped<UserMealLogEntity>? userMealLog,
    Wrapped<DateTime>? createdDate,
    Wrapped<DateTime>? lastUpdatedDate,
    Wrapped<DateTime?>? deletedAt,
  }) {
    return UserMealQuestionsEntity(
      id: (id != null ? id.value : this.id),
      question: (question != null ? question.value : this.question),
      options: (options != null ? options.value : this.options),
      answer: (answer != null ? answer.value : this.answer),
      userMealLog: (userMealLog != null ? userMealLog.value : this.userMealLog),
      createdDate: (createdDate != null ? createdDate.value : this.createdDate),
      lastUpdatedDate:
          (lastUpdatedDate != null
              ? lastUpdatedDate.value
              : this.lastUpdatedDate),
      deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateUserMealQuestionDto {
  const CreateUserMealQuestionDto({
    required this.question,
    required this.options,
  });

  factory CreateUserMealQuestionDto.fromJson(Map<String, dynamic> json) =>
      _$CreateUserMealQuestionDtoFromJson(json);

  static const toJsonFactory = _$CreateUserMealQuestionDtoToJson;
  Map<String, dynamic> toJson() => _$CreateUserMealQuestionDtoToJson(this);

  @JsonKey(name: 'question')
  final String question;
  @JsonKey(name: 'options', defaultValue: <String>[])
  final List<String> options;
  static const fromJsonFactory = _$CreateUserMealQuestionDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateUserMealQuestionDto &&
            (identical(other.question, question) ||
                const DeepCollectionEquality().equals(
                  other.question,
                  question,
                )) &&
            (identical(other.options, options) ||
                const DeepCollectionEquality().equals(other.options, options)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(question) ^
      const DeepCollectionEquality().hash(options) ^
      runtimeType.hashCode;
}

extension $CreateUserMealQuestionDtoExtension on CreateUserMealQuestionDto {
  CreateUserMealQuestionDto copyWith({
    String? question,
    List<String>? options,
  }) {
    return CreateUserMealQuestionDto(
      question: question ?? this.question,
      options: options ?? this.options,
    );
  }

  CreateUserMealQuestionDto copyWithWrapped({
    Wrapped<String>? question,
    Wrapped<List<String>>? options,
  }) {
    return CreateUserMealQuestionDto(
      question: (question != null ? question.value : this.question),
      options: (options != null ? options.value : this.options),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateManyUserMealQuestionsEntityDto {
  const CreateManyUserMealQuestionsEntityDto({required this.bulk});

  factory CreateManyUserMealQuestionsEntityDto.fromJson(
    Map<String, dynamic> json,
  ) => _$CreateManyUserMealQuestionsEntityDtoFromJson(json);

  static const toJsonFactory = _$CreateManyUserMealQuestionsEntityDtoToJson;
  Map<String, dynamic> toJson() =>
      _$CreateManyUserMealQuestionsEntityDtoToJson(this);

  @JsonKey(name: 'bulk', defaultValue: <CreateUserMealQuestionDto>[])
  final List<CreateUserMealQuestionDto> bulk;
  static const fromJsonFactory = _$CreateManyUserMealQuestionsEntityDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateManyUserMealQuestionsEntityDto &&
            (identical(other.bulk, bulk) ||
                const DeepCollectionEquality().equals(other.bulk, bulk)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(bulk) ^ runtimeType.hashCode;
}

extension $CreateManyUserMealQuestionsEntityDtoExtension
    on CreateManyUserMealQuestionsEntityDto {
  CreateManyUserMealQuestionsEntityDto copyWith({
    List<CreateUserMealQuestionDto>? bulk,
  }) {
    return CreateManyUserMealQuestionsEntityDto(bulk: bulk ?? this.bulk);
  }

  CreateManyUserMealQuestionsEntityDto copyWithWrapped({
    Wrapped<List<CreateUserMealQuestionDto>>? bulk,
  }) {
    return CreateManyUserMealQuestionsEntityDto(
      bulk: (bulk != null ? bulk.value : this.bulk),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateUserMealQuestionDto {
  const UpdateUserMealQuestionDto({
    required this.id,
    this.question,
    this.options,
    this.answer,
  });

  factory UpdateUserMealQuestionDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserMealQuestionDtoFromJson(json);

  static const toJsonFactory = _$UpdateUserMealQuestionDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateUserMealQuestionDtoToJson(this);

  @JsonKey(name: 'id')
  final double id;
  @JsonKey(name: 'question')
  final String? question;
  @JsonKey(name: 'options', defaultValue: <String>[])
  final List<String>? options;
  @JsonKey(name: 'answer')
  final String? answer;
  static const fromJsonFactory = _$UpdateUserMealQuestionDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdateUserMealQuestionDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.question, question) ||
                const DeepCollectionEquality().equals(
                  other.question,
                  question,
                )) &&
            (identical(other.options, options) ||
                const DeepCollectionEquality().equals(
                  other.options,
                  options,
                )) &&
            (identical(other.answer, answer) ||
                const DeepCollectionEquality().equals(other.answer, answer)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(question) ^
      const DeepCollectionEquality().hash(options) ^
      const DeepCollectionEquality().hash(answer) ^
      runtimeType.hashCode;
}

extension $UpdateUserMealQuestionDtoExtension on UpdateUserMealQuestionDto {
  UpdateUserMealQuestionDto copyWith({
    double? id,
    String? question,
    List<String>? options,
    String? answer,
  }) {
    return UpdateUserMealQuestionDto(
      id: id ?? this.id,
      question: question ?? this.question,
      options: options ?? this.options,
      answer: answer ?? this.answer,
    );
  }

  UpdateUserMealQuestionDto copyWithWrapped({
    Wrapped<double>? id,
    Wrapped<String?>? question,
    Wrapped<List<String>?>? options,
    Wrapped<String?>? answer,
  }) {
    return UpdateUserMealQuestionDto(
      id: (id != null ? id.value : this.id),
      question: (question != null ? question.value : this.question),
      options: (options != null ? options.value : this.options),
      answer: (answer != null ? answer.value : this.answer),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class GetManyUserSubMealLogEntityResponseDto {
  const GetManyUserSubMealLogEntityResponseDto({
    required this.data,
    required this.count,
    required this.total,
    required this.page,
    required this.pageCount,
  });

  factory GetManyUserSubMealLogEntityResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$GetManyUserSubMealLogEntityResponseDtoFromJson(json);

  static const toJsonFactory = _$GetManyUserSubMealLogEntityResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$GetManyUserSubMealLogEntityResponseDtoToJson(this);

  @JsonKey(name: 'data', defaultValue: <UserSubMealLogEntity>[])
  final List<UserSubMealLogEntity> data;
  @JsonKey(name: 'count')
  final double count;
  @JsonKey(name: 'total')
  final double total;
  @JsonKey(name: 'page')
  final double page;
  @JsonKey(name: 'pageCount')
  final double pageCount;
  static const fromJsonFactory =
      _$GetManyUserSubMealLogEntityResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is GetManyUserSubMealLogEntityResponseDto &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.pageCount, pageCount) ||
                const DeepCollectionEquality().equals(
                  other.pageCount,
                  pageCount,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(pageCount) ^
      runtimeType.hashCode;
}

extension $GetManyUserSubMealLogEntityResponseDtoExtension
    on GetManyUserSubMealLogEntityResponseDto {
  GetManyUserSubMealLogEntityResponseDto copyWith({
    List<UserSubMealLogEntity>? data,
    double? count,
    double? total,
    double? page,
    double? pageCount,
  }) {
    return GetManyUserSubMealLogEntityResponseDto(
      data: data ?? this.data,
      count: count ?? this.count,
      total: total ?? this.total,
      page: page ?? this.page,
      pageCount: pageCount ?? this.pageCount,
    );
  }

  GetManyUserSubMealLogEntityResponseDto copyWithWrapped({
    Wrapped<List<UserSubMealLogEntity>>? data,
    Wrapped<double>? count,
    Wrapped<double>? total,
    Wrapped<double>? page,
    Wrapped<double>? pageCount,
  }) {
    return GetManyUserSubMealLogEntityResponseDto(
      data: (data != null ? data.value : this.data),
      count: (count != null ? count.value : this.count),
      total: (total != null ? total.value : this.total),
      page: (page != null ? page.value : this.page),
      pageCount: (pageCount != null ? pageCount.value : this.pageCount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserSubMealLogEntity {
  const UserSubMealLogEntity({
    this.id,
    this.mealName,
    this.weight,
    this.calories,
    this.protein,
    this.fats,
    this.carbs,
    this.mainMeal,
    this.createdBy,
    this.createdDate,
    this.lastUpdatedDate,
    this.deletedAt,
  });

  factory UserSubMealLogEntity.fromJson(Map<String, dynamic> json) =>
      _$UserSubMealLogEntityFromJson(json);

  static const toJsonFactory = _$UserSubMealLogEntityToJson;
  Map<String, dynamic> toJson() => _$UserSubMealLogEntityToJson(this);

  @JsonKey(name: 'id')
  final double? id;
  @JsonKey(name: 'mealName')
  final String? mealName;
  @JsonKey(name: 'weight')
  final double? weight;
  @JsonKey(name: 'calories')
  final double? calories;
  @JsonKey(name: 'protein')
  final double? protein;
  @JsonKey(name: 'fats')
  final double? fats;
  @JsonKey(name: 'carbs')
  final double? carbs;
  @JsonKey(name: 'mainMeal')
  final UserMealLogEntity? mainMeal;
  @JsonKey(name: 'createdBy')
  final UserEntity? createdBy;
  @JsonKey(name: 'createdDate')
  final DateTime? createdDate;
  @JsonKey(name: 'lastUpdatedDate')
  final DateTime? lastUpdatedDate;
  @JsonKey(name: 'deletedAt')
  final DateTime? deletedAt;
  static const fromJsonFactory = _$UserSubMealLogEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserSubMealLogEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.mealName, mealName) ||
                const DeepCollectionEquality().equals(
                  other.mealName,
                  mealName,
                )) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.calories, calories) ||
                const DeepCollectionEquality().equals(
                  other.calories,
                  calories,
                )) &&
            (identical(other.protein, protein) ||
                const DeepCollectionEquality().equals(
                  other.protein,
                  protein,
                )) &&
            (identical(other.fats, fats) ||
                const DeepCollectionEquality().equals(other.fats, fats)) &&
            (identical(other.carbs, carbs) ||
                const DeepCollectionEquality().equals(other.carbs, carbs)) &&
            (identical(other.mainMeal, mainMeal) ||
                const DeepCollectionEquality().equals(
                  other.mainMeal,
                  mainMeal,
                )) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality().equals(
                  other.createdBy,
                  createdBy,
                )) &&
            (identical(other.createdDate, createdDate) ||
                const DeepCollectionEquality().equals(
                  other.createdDate,
                  createdDate,
                )) &&
            (identical(other.lastUpdatedDate, lastUpdatedDate) ||
                const DeepCollectionEquality().equals(
                  other.lastUpdatedDate,
                  lastUpdatedDate,
                )) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality().equals(
                  other.deletedAt,
                  deletedAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(mealName) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(calories) ^
      const DeepCollectionEquality().hash(protein) ^
      const DeepCollectionEquality().hash(fats) ^
      const DeepCollectionEquality().hash(carbs) ^
      const DeepCollectionEquality().hash(mainMeal) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdDate) ^
      const DeepCollectionEquality().hash(lastUpdatedDate) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      runtimeType.hashCode;
}

extension $UserSubMealLogEntityExtension on UserSubMealLogEntity {
  UserSubMealLogEntity copyWith({
    double? id,
    String? mealName,
    double? weight,
    double? calories,
    double? protein,
    double? fats,
    double? carbs,
    UserMealLogEntity? mainMeal,
    UserEntity? createdBy,
    DateTime? createdDate,
    DateTime? lastUpdatedDate,
    DateTime? deletedAt,
  }) {
    return UserSubMealLogEntity(
      id: id ?? this.id,
      mealName: mealName ?? this.mealName,
      weight: weight ?? this.weight,
      calories: calories ?? this.calories,
      protein: protein ?? this.protein,
      fats: fats ?? this.fats,
      carbs: carbs ?? this.carbs,
      mainMeal: mainMeal ?? this.mainMeal,
      createdBy: createdBy ?? this.createdBy,
      createdDate: createdDate ?? this.createdDate,
      lastUpdatedDate: lastUpdatedDate ?? this.lastUpdatedDate,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }

  UserSubMealLogEntity copyWithWrapped({
    Wrapped<double?>? id,
    Wrapped<String?>? mealName,
    Wrapped<double?>? weight,
    Wrapped<double?>? calories,
    Wrapped<double?>? protein,
    Wrapped<double?>? fats,
    Wrapped<double?>? carbs,
    Wrapped<UserMealLogEntity?>? mainMeal,
    Wrapped<UserEntity?>? createdBy,
    Wrapped<DateTime?>? createdDate,
    Wrapped<DateTime?>? lastUpdatedDate,
    Wrapped<DateTime?>? deletedAt,
  }) {
    return UserSubMealLogEntity(
      id: (id != null ? id.value : this.id),
      mealName: (mealName != null ? mealName.value : this.mealName),
      weight: (weight != null ? weight.value : this.weight),
      calories: (calories != null ? calories.value : this.calories),
      protein: (protein != null ? protein.value : this.protein),
      fats: (fats != null ? fats.value : this.fats),
      carbs: (carbs != null ? carbs.value : this.carbs),
      mainMeal: (mainMeal != null ? mainMeal.value : this.mainMeal),
      createdBy: (createdBy != null ? createdBy.value : this.createdBy),
      createdDate: (createdDate != null ? createdDate.value : this.createdDate),
      lastUpdatedDate:
          (lastUpdatedDate != null
              ? lastUpdatedDate.value
              : this.lastUpdatedDate),
      deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateUserSubMealLogDto {
  const CreateUserSubMealLogDto({
    required this.mealName,
    required this.weight,
    required this.calories,
    required this.protein,
    required this.fats,
    required this.carbs,
    this.mainMealId,
    required this.createdById,
  });

  factory CreateUserSubMealLogDto.fromJson(Map<String, dynamic> json) =>
      _$CreateUserSubMealLogDtoFromJson(json);

  static const toJsonFactory = _$CreateUserSubMealLogDtoToJson;
  Map<String, dynamic> toJson() => _$CreateUserSubMealLogDtoToJson(this);

  @JsonKey(name: 'mealName')
  final String mealName;
  @JsonKey(name: 'weight')
  final double weight;
  @JsonKey(name: 'calories')
  final double calories;
  @JsonKey(name: 'protein')
  final double protein;
  @JsonKey(name: 'fats')
  final double fats;
  @JsonKey(name: 'carbs')
  final double carbs;
  @JsonKey(name: 'mainMealId')
  final double? mainMealId;
  @JsonKey(name: 'createdById')
  final double createdById;
  static const fromJsonFactory = _$CreateUserSubMealLogDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateUserSubMealLogDto &&
            (identical(other.mealName, mealName) ||
                const DeepCollectionEquality().equals(
                  other.mealName,
                  mealName,
                )) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.calories, calories) ||
                const DeepCollectionEquality().equals(
                  other.calories,
                  calories,
                )) &&
            (identical(other.protein, protein) ||
                const DeepCollectionEquality().equals(
                  other.protein,
                  protein,
                )) &&
            (identical(other.fats, fats) ||
                const DeepCollectionEquality().equals(other.fats, fats)) &&
            (identical(other.carbs, carbs) ||
                const DeepCollectionEquality().equals(other.carbs, carbs)) &&
            (identical(other.mainMealId, mainMealId) ||
                const DeepCollectionEquality().equals(
                  other.mainMealId,
                  mainMealId,
                )) &&
            (identical(other.createdById, createdById) ||
                const DeepCollectionEquality().equals(
                  other.createdById,
                  createdById,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(mealName) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(calories) ^
      const DeepCollectionEquality().hash(protein) ^
      const DeepCollectionEquality().hash(fats) ^
      const DeepCollectionEquality().hash(carbs) ^
      const DeepCollectionEquality().hash(mainMealId) ^
      const DeepCollectionEquality().hash(createdById) ^
      runtimeType.hashCode;
}

extension $CreateUserSubMealLogDtoExtension on CreateUserSubMealLogDto {
  CreateUserSubMealLogDto copyWith({
    String? mealName,
    double? weight,
    double? calories,
    double? protein,
    double? fats,
    double? carbs,
    double? mainMealId,
    double? createdById,
  }) {
    return CreateUserSubMealLogDto(
      mealName: mealName ?? this.mealName,
      weight: weight ?? this.weight,
      calories: calories ?? this.calories,
      protein: protein ?? this.protein,
      fats: fats ?? this.fats,
      carbs: carbs ?? this.carbs,
      mainMealId: mainMealId ?? this.mainMealId,
      createdById: createdById ?? this.createdById,
    );
  }

  CreateUserSubMealLogDto copyWithWrapped({
    Wrapped<String>? mealName,
    Wrapped<double>? weight,
    Wrapped<double>? calories,
    Wrapped<double>? protein,
    Wrapped<double>? fats,
    Wrapped<double>? carbs,
    Wrapped<double?>? mainMealId,
    Wrapped<double>? createdById,
  }) {
    return CreateUserSubMealLogDto(
      mealName: (mealName != null ? mealName.value : this.mealName),
      weight: (weight != null ? weight.value : this.weight),
      calories: (calories != null ? calories.value : this.calories),
      protein: (protein != null ? protein.value : this.protein),
      fats: (fats != null ? fats.value : this.fats),
      carbs: (carbs != null ? carbs.value : this.carbs),
      mainMealId: (mainMealId != null ? mainMealId.value : this.mainMealId),
      createdById: (createdById != null ? createdById.value : this.createdById),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateManyUserSubMealLogEntityDto {
  const CreateManyUserSubMealLogEntityDto({required this.bulk});

  factory CreateManyUserSubMealLogEntityDto.fromJson(
    Map<String, dynamic> json,
  ) => _$CreateManyUserSubMealLogEntityDtoFromJson(json);

  static const toJsonFactory = _$CreateManyUserSubMealLogEntityDtoToJson;
  Map<String, dynamic> toJson() =>
      _$CreateManyUserSubMealLogEntityDtoToJson(this);

  @JsonKey(name: 'bulk', defaultValue: <CreateUserSubMealLogDto>[])
  final List<CreateUserSubMealLogDto> bulk;
  static const fromJsonFactory = _$CreateManyUserSubMealLogEntityDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateManyUserSubMealLogEntityDto &&
            (identical(other.bulk, bulk) ||
                const DeepCollectionEquality().equals(other.bulk, bulk)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(bulk) ^ runtimeType.hashCode;
}

extension $CreateManyUserSubMealLogEntityDtoExtension
    on CreateManyUserSubMealLogEntityDto {
  CreateManyUserSubMealLogEntityDto copyWith({
    List<CreateUserSubMealLogDto>? bulk,
  }) {
    return CreateManyUserSubMealLogEntityDto(bulk: bulk ?? this.bulk);
  }

  CreateManyUserSubMealLogEntityDto copyWithWrapped({
    Wrapped<List<CreateUserSubMealLogDto>>? bulk,
  }) {
    return CreateManyUserSubMealLogEntityDto(
      bulk: (bulk != null ? bulk.value : this.bulk),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateUserSubMealLogDto {
  const UpdateUserSubMealLogDto();

  factory UpdateUserSubMealLogDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserSubMealLogDtoFromJson(json);

  static const toJsonFactory = _$UpdateUserSubMealLogDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateUserSubMealLogDtoToJson(this);

  static const fromJsonFactory = _$UpdateUserSubMealLogDtoFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class ExtractBiodataInputDto {
  const ExtractBiodataInputDto({
    required this.userId,
    this.bodyImageFront,
    this.bodyImageSide,
    required this.height,
    required this.weight,
    required this.age,
    required this.goal,
    required this.physicalActivity,
  });

  factory ExtractBiodataInputDto.fromJson(Map<String, dynamic> json) =>
      _$ExtractBiodataInputDtoFromJson(json);

  static const toJsonFactory = _$ExtractBiodataInputDtoToJson;
  Map<String, dynamic> toJson() => _$ExtractBiodataInputDtoToJson(this);

  @JsonKey(name: 'userId')
  final double userId;
  @JsonKey(name: 'bodyImageFront')
  final String? bodyImageFront;
  @JsonKey(name: 'bodyImageSide')
  final String? bodyImageSide;
  @JsonKey(name: 'height')
  final double height;
  @JsonKey(name: 'weight')
  final double weight;
  @JsonKey(name: 'age')
  final double age;
  @JsonKey(name: 'goal')
  final double goal;
  @JsonKey(name: 'physicalActivity')
  final double physicalActivity;
  static const fromJsonFactory = _$ExtractBiodataInputDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ExtractBiodataInputDto &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.bodyImageFront, bodyImageFront) ||
                const DeepCollectionEquality().equals(
                  other.bodyImageFront,
                  bodyImageFront,
                )) &&
            (identical(other.bodyImageSide, bodyImageSide) ||
                const DeepCollectionEquality().equals(
                  other.bodyImageSide,
                  bodyImageSide,
                )) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.goal, goal) ||
                const DeepCollectionEquality().equals(other.goal, goal)) &&
            (identical(other.physicalActivity, physicalActivity) ||
                const DeepCollectionEquality().equals(
                  other.physicalActivity,
                  physicalActivity,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(bodyImageFront) ^
      const DeepCollectionEquality().hash(bodyImageSide) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(goal) ^
      const DeepCollectionEquality().hash(physicalActivity) ^
      runtimeType.hashCode;
}

extension $ExtractBiodataInputDtoExtension on ExtractBiodataInputDto {
  ExtractBiodataInputDto copyWith({
    double? userId,
    String? bodyImageFront,
    String? bodyImageSide,
    double? height,
    double? weight,
    double? age,
    double? goal,
    double? physicalActivity,
  }) {
    return ExtractBiodataInputDto(
      userId: userId ?? this.userId,
      bodyImageFront: bodyImageFront ?? this.bodyImageFront,
      bodyImageSide: bodyImageSide ?? this.bodyImageSide,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      age: age ?? this.age,
      goal: goal ?? this.goal,
      physicalActivity: physicalActivity ?? this.physicalActivity,
    );
  }

  ExtractBiodataInputDto copyWithWrapped({
    Wrapped<double>? userId,
    Wrapped<String?>? bodyImageFront,
    Wrapped<String?>? bodyImageSide,
    Wrapped<double>? height,
    Wrapped<double>? weight,
    Wrapped<double>? age,
    Wrapped<double>? goal,
    Wrapped<double>? physicalActivity,
  }) {
    return ExtractBiodataInputDto(
      userId: (userId != null ? userId.value : this.userId),
      bodyImageFront:
          (bodyImageFront != null ? bodyImageFront.value : this.bodyImageFront),
      bodyImageSide:
          (bodyImageSide != null ? bodyImageSide.value : this.bodyImageSide),
      height: (height != null ? height.value : this.height),
      weight: (weight != null ? weight.value : this.weight),
      age: (age != null ? age.value : this.age),
      goal: (goal != null ? goal.value : this.goal),
      physicalActivity:
          (physicalActivity != null
              ? physicalActivity.value
              : this.physicalActivity),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ExtractBiodataOutputDto {
  const ExtractBiodataOutputDto({
    required this.calories,
    required this.protein,
    required this.fats,
    required this.carbs,
    required this.mainMacro,
    required this.age,
    required this.weight,
    required this.height,
    required this.bmi,
    required this.bodyFat,
    required this.muscleMass,
    required this.goal,
    required this.physicalActivity,
  });

  factory ExtractBiodataOutputDto.fromJson(Map<String, dynamic> json) =>
      _$ExtractBiodataOutputDtoFromJson(json);

  static const toJsonFactory = _$ExtractBiodataOutputDtoToJson;
  Map<String, dynamic> toJson() => _$ExtractBiodataOutputDtoToJson(this);

  @JsonKey(name: 'calories')
  final double calories;
  @JsonKey(name: 'protein')
  final double protein;
  @JsonKey(name: 'fats')
  final double fats;
  @JsonKey(name: 'carbs')
  final double carbs;
  @JsonKey(name: 'mainMacro')
  final String mainMacro;
  @JsonKey(name: 'age')
  final double age;
  @JsonKey(name: 'weight')
  final double weight;
  @JsonKey(name: 'height')
  final double height;
  @JsonKey(name: 'bmi')
  final double bmi;
  @JsonKey(name: 'bodyFat')
  final double bodyFat;
  @JsonKey(name: 'muscleMass')
  final double muscleMass;
  @JsonKey(name: 'goal')
  final double goal;
  @JsonKey(name: 'physicalActivity')
  final double physicalActivity;
  static const fromJsonFactory = _$ExtractBiodataOutputDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ExtractBiodataOutputDto &&
            (identical(other.calories, calories) ||
                const DeepCollectionEquality().equals(
                  other.calories,
                  calories,
                )) &&
            (identical(other.protein, protein) ||
                const DeepCollectionEquality().equals(
                  other.protein,
                  protein,
                )) &&
            (identical(other.fats, fats) ||
                const DeepCollectionEquality().equals(other.fats, fats)) &&
            (identical(other.carbs, carbs) ||
                const DeepCollectionEquality().equals(other.carbs, carbs)) &&
            (identical(other.mainMacro, mainMacro) ||
                const DeepCollectionEquality().equals(
                  other.mainMacro,
                  mainMacro,
                )) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.bmi, bmi) ||
                const DeepCollectionEquality().equals(other.bmi, bmi)) &&
            (identical(other.bodyFat, bodyFat) ||
                const DeepCollectionEquality().equals(
                  other.bodyFat,
                  bodyFat,
                )) &&
            (identical(other.muscleMass, muscleMass) ||
                const DeepCollectionEquality().equals(
                  other.muscleMass,
                  muscleMass,
                )) &&
            (identical(other.goal, goal) ||
                const DeepCollectionEquality().equals(other.goal, goal)) &&
            (identical(other.physicalActivity, physicalActivity) ||
                const DeepCollectionEquality().equals(
                  other.physicalActivity,
                  physicalActivity,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(calories) ^
      const DeepCollectionEquality().hash(protein) ^
      const DeepCollectionEquality().hash(fats) ^
      const DeepCollectionEquality().hash(carbs) ^
      const DeepCollectionEquality().hash(mainMacro) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(bmi) ^
      const DeepCollectionEquality().hash(bodyFat) ^
      const DeepCollectionEquality().hash(muscleMass) ^
      const DeepCollectionEquality().hash(goal) ^
      const DeepCollectionEquality().hash(physicalActivity) ^
      runtimeType.hashCode;
}

extension $ExtractBiodataOutputDtoExtension on ExtractBiodataOutputDto {
  ExtractBiodataOutputDto copyWith({
    double? calories,
    double? protein,
    double? fats,
    double? carbs,
    String? mainMacro,
    double? age,
    double? weight,
    double? height,
    double? bmi,
    double? bodyFat,
    double? muscleMass,
    double? goal,
    double? physicalActivity,
  }) {
    return ExtractBiodataOutputDto(
      calories: calories ?? this.calories,
      protein: protein ?? this.protein,
      fats: fats ?? this.fats,
      carbs: carbs ?? this.carbs,
      mainMacro: mainMacro ?? this.mainMacro,
      age: age ?? this.age,
      weight: weight ?? this.weight,
      height: height ?? this.height,
      bmi: bmi ?? this.bmi,
      bodyFat: bodyFat ?? this.bodyFat,
      muscleMass: muscleMass ?? this.muscleMass,
      goal: goal ?? this.goal,
      physicalActivity: physicalActivity ?? this.physicalActivity,
    );
  }

  ExtractBiodataOutputDto copyWithWrapped({
    Wrapped<double>? calories,
    Wrapped<double>? protein,
    Wrapped<double>? fats,
    Wrapped<double>? carbs,
    Wrapped<String>? mainMacro,
    Wrapped<double>? age,
    Wrapped<double>? weight,
    Wrapped<double>? height,
    Wrapped<double>? bmi,
    Wrapped<double>? bodyFat,
    Wrapped<double>? muscleMass,
    Wrapped<double>? goal,
    Wrapped<double>? physicalActivity,
  }) {
    return ExtractBiodataOutputDto(
      calories: (calories != null ? calories.value : this.calories),
      protein: (protein != null ? protein.value : this.protein),
      fats: (fats != null ? fats.value : this.fats),
      carbs: (carbs != null ? carbs.value : this.carbs),
      mainMacro: (mainMacro != null ? mainMacro.value : this.mainMacro),
      age: (age != null ? age.value : this.age),
      weight: (weight != null ? weight.value : this.weight),
      height: (height != null ? height.value : this.height),
      bmi: (bmi != null ? bmi.value : this.bmi),
      bodyFat: (bodyFat != null ? bodyFat.value : this.bodyFat),
      muscleMass: (muscleMass != null ? muscleMass.value : this.muscleMass),
      goal: (goal != null ? goal.value : this.goal),
      physicalActivity:
          (physicalActivity != null
              ? physicalActivity.value
              : this.physicalActivity),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class GetManyUserBiodataEntityResponseDto {
  const GetManyUserBiodataEntityResponseDto({
    required this.data,
    required this.count,
    required this.total,
    required this.page,
    required this.pageCount,
  });

  factory GetManyUserBiodataEntityResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$GetManyUserBiodataEntityResponseDtoFromJson(json);

  static const toJsonFactory = _$GetManyUserBiodataEntityResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$GetManyUserBiodataEntityResponseDtoToJson(this);

  @JsonKey(name: 'data', defaultValue: <UserBiodataEntity>[])
  final List<UserBiodataEntity> data;
  @JsonKey(name: 'count')
  final double count;
  @JsonKey(name: 'total')
  final double total;
  @JsonKey(name: 'page')
  final double page;
  @JsonKey(name: 'pageCount')
  final double pageCount;
  static const fromJsonFactory = _$GetManyUserBiodataEntityResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is GetManyUserBiodataEntityResponseDto &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.pageCount, pageCount) ||
                const DeepCollectionEquality().equals(
                  other.pageCount,
                  pageCount,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(pageCount) ^
      runtimeType.hashCode;
}

extension $GetManyUserBiodataEntityResponseDtoExtension
    on GetManyUserBiodataEntityResponseDto {
  GetManyUserBiodataEntityResponseDto copyWith({
    List<UserBiodataEntity>? data,
    double? count,
    double? total,
    double? page,
    double? pageCount,
  }) {
    return GetManyUserBiodataEntityResponseDto(
      data: data ?? this.data,
      count: count ?? this.count,
      total: total ?? this.total,
      page: page ?? this.page,
      pageCount: pageCount ?? this.pageCount,
    );
  }

  GetManyUserBiodataEntityResponseDto copyWithWrapped({
    Wrapped<List<UserBiodataEntity>>? data,
    Wrapped<double>? count,
    Wrapped<double>? total,
    Wrapped<double>? page,
    Wrapped<double>? pageCount,
  }) {
    return GetManyUserBiodataEntityResponseDto(
      data: (data != null ? data.value : this.data),
      count: (count != null ? count.value : this.count),
      total: (total != null ? total.value : this.total),
      page: (page != null ? page.value : this.page),
      pageCount: (pageCount != null ? pageCount.value : this.pageCount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserBiodataEntity {
  const UserBiodataEntity({
    required this.id,
    required this.user,
    required this.age,
    required this.weight,
    required this.height,
    required this.bmi,
    required this.bodyFat,
    required this.muscleMass,
    required this.goal,
    required this.physicalActivity,
    required this.createdBy,
    required this.creationDate,
    required this.lastUpdatedDate,
    this.deletedAt,
  });

  factory UserBiodataEntity.fromJson(Map<String, dynamic> json) =>
      _$UserBiodataEntityFromJson(json);

  static const toJsonFactory = _$UserBiodataEntityToJson;
  Map<String, dynamic> toJson() => _$UserBiodataEntityToJson(this);

  @JsonKey(name: 'id')
  final double id;
  @JsonKey(name: 'user')
  final UserEntity user;
  @JsonKey(name: 'age')
  final double age;
  @JsonKey(name: 'weight')
  final double weight;
  @JsonKey(name: 'height')
  final double height;
  @JsonKey(name: 'bmi')
  final double bmi;
  @JsonKey(name: 'bodyFat')
  final double bodyFat;
  @JsonKey(name: 'muscleMass')
  final double muscleMass;
  @JsonKey(name: 'goal')
  final double goal;
  @JsonKey(name: 'physicalActivity')
  final double physicalActivity;
  @JsonKey(name: 'createdBy')
  final String createdBy;
  @JsonKey(name: 'creationDate')
  final DateTime creationDate;
  @JsonKey(name: 'lastUpdatedDate')
  final DateTime lastUpdatedDate;
  @JsonKey(name: 'deletedAt')
  final DateTime? deletedAt;
  static const fromJsonFactory = _$UserBiodataEntityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserBiodataEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.bmi, bmi) ||
                const DeepCollectionEquality().equals(other.bmi, bmi)) &&
            (identical(other.bodyFat, bodyFat) ||
                const DeepCollectionEquality().equals(
                  other.bodyFat,
                  bodyFat,
                )) &&
            (identical(other.muscleMass, muscleMass) ||
                const DeepCollectionEquality().equals(
                  other.muscleMass,
                  muscleMass,
                )) &&
            (identical(other.goal, goal) ||
                const DeepCollectionEquality().equals(other.goal, goal)) &&
            (identical(other.physicalActivity, physicalActivity) ||
                const DeepCollectionEquality().equals(
                  other.physicalActivity,
                  physicalActivity,
                )) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality().equals(
                  other.createdBy,
                  createdBy,
                )) &&
            (identical(other.creationDate, creationDate) ||
                const DeepCollectionEquality().equals(
                  other.creationDate,
                  creationDate,
                )) &&
            (identical(other.lastUpdatedDate, lastUpdatedDate) ||
                const DeepCollectionEquality().equals(
                  other.lastUpdatedDate,
                  lastUpdatedDate,
                )) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality().equals(
                  other.deletedAt,
                  deletedAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(bmi) ^
      const DeepCollectionEquality().hash(bodyFat) ^
      const DeepCollectionEquality().hash(muscleMass) ^
      const DeepCollectionEquality().hash(goal) ^
      const DeepCollectionEquality().hash(physicalActivity) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(lastUpdatedDate) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      runtimeType.hashCode;
}

extension $UserBiodataEntityExtension on UserBiodataEntity {
  UserBiodataEntity copyWith({
    double? id,
    UserEntity? user,
    double? age,
    double? weight,
    double? height,
    double? bmi,
    double? bodyFat,
    double? muscleMass,
    double? goal,
    double? physicalActivity,
    String? createdBy,
    DateTime? creationDate,
    DateTime? lastUpdatedDate,
    DateTime? deletedAt,
  }) {
    return UserBiodataEntity(
      id: id ?? this.id,
      user: user ?? this.user,
      age: age ?? this.age,
      weight: weight ?? this.weight,
      height: height ?? this.height,
      bmi: bmi ?? this.bmi,
      bodyFat: bodyFat ?? this.bodyFat,
      muscleMass: muscleMass ?? this.muscleMass,
      goal: goal ?? this.goal,
      physicalActivity: physicalActivity ?? this.physicalActivity,
      createdBy: createdBy ?? this.createdBy,
      creationDate: creationDate ?? this.creationDate,
      lastUpdatedDate: lastUpdatedDate ?? this.lastUpdatedDate,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }

  UserBiodataEntity copyWithWrapped({
    Wrapped<double>? id,
    Wrapped<UserEntity>? user,
    Wrapped<double>? age,
    Wrapped<double>? weight,
    Wrapped<double>? height,
    Wrapped<double>? bmi,
    Wrapped<double>? bodyFat,
    Wrapped<double>? muscleMass,
    Wrapped<double>? goal,
    Wrapped<double>? physicalActivity,
    Wrapped<String>? createdBy,
    Wrapped<DateTime>? creationDate,
    Wrapped<DateTime>? lastUpdatedDate,
    Wrapped<DateTime?>? deletedAt,
  }) {
    return UserBiodataEntity(
      id: (id != null ? id.value : this.id),
      user: (user != null ? user.value : this.user),
      age: (age != null ? age.value : this.age),
      weight: (weight != null ? weight.value : this.weight),
      height: (height != null ? height.value : this.height),
      bmi: (bmi != null ? bmi.value : this.bmi),
      bodyFat: (bodyFat != null ? bodyFat.value : this.bodyFat),
      muscleMass: (muscleMass != null ? muscleMass.value : this.muscleMass),
      goal: (goal != null ? goal.value : this.goal),
      physicalActivity:
          (physicalActivity != null
              ? physicalActivity.value
              : this.physicalActivity),
      createdBy: (createdBy != null ? createdBy.value : this.createdBy),
      creationDate:
          (creationDate != null ? creationDate.value : this.creationDate),
      lastUpdatedDate:
          (lastUpdatedDate != null
              ? lastUpdatedDate.value
              : this.lastUpdatedDate),
      deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateUserBiodataDto {
  const CreateUserBiodataDto({
    required this.userId,
    required this.age,
    required this.weight,
    required this.height,
    required this.bmi,
    required this.bodyFat,
    required this.muscleMass,
    required this.goal,
    required this.physicalActivity,
    required this.createdBy,
  });

  factory CreateUserBiodataDto.fromJson(Map<String, dynamic> json) =>
      _$CreateUserBiodataDtoFromJson(json);

  static const toJsonFactory = _$CreateUserBiodataDtoToJson;
  Map<String, dynamic> toJson() => _$CreateUserBiodataDtoToJson(this);

  @JsonKey(name: 'userId')
  final double userId;
  @JsonKey(name: 'age')
  final double age;
  @JsonKey(name: 'weight')
  final double weight;
  @JsonKey(name: 'height')
  final double height;
  @JsonKey(name: 'bmi')
  final double bmi;
  @JsonKey(name: 'bodyFat')
  final double bodyFat;
  @JsonKey(name: 'muscleMass')
  final double muscleMass;
  @JsonKey(name: 'goal')
  final double goal;
  @JsonKey(name: 'physicalActivity')
  final double physicalActivity;
  @JsonKey(name: 'createdBy')
  final String createdBy;
  static const fromJsonFactory = _$CreateUserBiodataDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateUserBiodataDto &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.bmi, bmi) ||
                const DeepCollectionEquality().equals(other.bmi, bmi)) &&
            (identical(other.bodyFat, bodyFat) ||
                const DeepCollectionEquality().equals(
                  other.bodyFat,
                  bodyFat,
                )) &&
            (identical(other.muscleMass, muscleMass) ||
                const DeepCollectionEquality().equals(
                  other.muscleMass,
                  muscleMass,
                )) &&
            (identical(other.goal, goal) ||
                const DeepCollectionEquality().equals(other.goal, goal)) &&
            (identical(other.physicalActivity, physicalActivity) ||
                const DeepCollectionEquality().equals(
                  other.physicalActivity,
                  physicalActivity,
                )) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality().equals(
                  other.createdBy,
                  createdBy,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(bmi) ^
      const DeepCollectionEquality().hash(bodyFat) ^
      const DeepCollectionEquality().hash(muscleMass) ^
      const DeepCollectionEquality().hash(goal) ^
      const DeepCollectionEquality().hash(physicalActivity) ^
      const DeepCollectionEquality().hash(createdBy) ^
      runtimeType.hashCode;
}

extension $CreateUserBiodataDtoExtension on CreateUserBiodataDto {
  CreateUserBiodataDto copyWith({
    double? userId,
    double? age,
    double? weight,
    double? height,
    double? bmi,
    double? bodyFat,
    double? muscleMass,
    double? goal,
    double? physicalActivity,
    String? createdBy,
  }) {
    return CreateUserBiodataDto(
      userId: userId ?? this.userId,
      age: age ?? this.age,
      weight: weight ?? this.weight,
      height: height ?? this.height,
      bmi: bmi ?? this.bmi,
      bodyFat: bodyFat ?? this.bodyFat,
      muscleMass: muscleMass ?? this.muscleMass,
      goal: goal ?? this.goal,
      physicalActivity: physicalActivity ?? this.physicalActivity,
      createdBy: createdBy ?? this.createdBy,
    );
  }

  CreateUserBiodataDto copyWithWrapped({
    Wrapped<double>? userId,
    Wrapped<double>? age,
    Wrapped<double>? weight,
    Wrapped<double>? height,
    Wrapped<double>? bmi,
    Wrapped<double>? bodyFat,
    Wrapped<double>? muscleMass,
    Wrapped<double>? goal,
    Wrapped<double>? physicalActivity,
    Wrapped<String>? createdBy,
  }) {
    return CreateUserBiodataDto(
      userId: (userId != null ? userId.value : this.userId),
      age: (age != null ? age.value : this.age),
      weight: (weight != null ? weight.value : this.weight),
      height: (height != null ? height.value : this.height),
      bmi: (bmi != null ? bmi.value : this.bmi),
      bodyFat: (bodyFat != null ? bodyFat.value : this.bodyFat),
      muscleMass: (muscleMass != null ? muscleMass.value : this.muscleMass),
      goal: (goal != null ? goal.value : this.goal),
      physicalActivity:
          (physicalActivity != null
              ? physicalActivity.value
              : this.physicalActivity),
      createdBy: (createdBy != null ? createdBy.value : this.createdBy),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateManyUserBiodataEntityDto {
  const CreateManyUserBiodataEntityDto({required this.bulk});

  factory CreateManyUserBiodataEntityDto.fromJson(Map<String, dynamic> json) =>
      _$CreateManyUserBiodataEntityDtoFromJson(json);

  static const toJsonFactory = _$CreateManyUserBiodataEntityDtoToJson;
  Map<String, dynamic> toJson() => _$CreateManyUserBiodataEntityDtoToJson(this);

  @JsonKey(name: 'bulk', defaultValue: <CreateUserBiodataDto>[])
  final List<CreateUserBiodataDto> bulk;
  static const fromJsonFactory = _$CreateManyUserBiodataEntityDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateManyUserBiodataEntityDto &&
            (identical(other.bulk, bulk) ||
                const DeepCollectionEquality().equals(other.bulk, bulk)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(bulk) ^ runtimeType.hashCode;
}

extension $CreateManyUserBiodataEntityDtoExtension
    on CreateManyUserBiodataEntityDto {
  CreateManyUserBiodataEntityDto copyWith({List<CreateUserBiodataDto>? bulk}) {
    return CreateManyUserBiodataEntityDto(bulk: bulk ?? this.bulk);
  }

  CreateManyUserBiodataEntityDto copyWithWrapped({
    Wrapped<List<CreateUserBiodataDto>>? bulk,
  }) {
    return CreateManyUserBiodataEntityDto(
      bulk: (bulk != null ? bulk.value : this.bulk),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateUserBiodataDto {
  const UpdateUserBiodataDto();

  factory UpdateUserBiodataDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserBiodataDtoFromJson(json);

  static const toJsonFactory = _$UpdateUserBiodataDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateUserBiodataDtoToJson(this);

  static const fromJsonFactory = _$UpdateUserBiodataDtoFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class RestAIPromptTestFunctionPost$RequestBody {
  const RestAIPromptTestFunctionPost$RequestBody({this.imageBase64});

  factory RestAIPromptTestFunctionPost$RequestBody.fromJson(
    Map<String, dynamic> json,
  ) => _$RestAIPromptTestFunctionPost$RequestBodyFromJson(json);

  static const toJsonFactory = _$RestAIPromptTestFunctionPost$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$RestAIPromptTestFunctionPost$RequestBodyToJson(this);

  @JsonKey(name: 'imageBase64')
  final String? imageBase64;
  static const fromJsonFactory =
      _$RestAIPromptTestFunctionPost$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RestAIPromptTestFunctionPost$RequestBody &&
            (identical(other.imageBase64, imageBase64) ||
                const DeepCollectionEquality().equals(
                  other.imageBase64,
                  imageBase64,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(imageBase64) ^ runtimeType.hashCode;
}

extension $RestAIPromptTestFunctionPost$RequestBodyExtension
    on RestAIPromptTestFunctionPost$RequestBody {
  RestAIPromptTestFunctionPost$RequestBody copyWith({String? imageBase64}) {
    return RestAIPromptTestFunctionPost$RequestBody(
      imageBase64: imageBase64 ?? this.imageBase64,
    );
  }

  RestAIPromptTestFunctionPost$RequestBody copyWithWrapped({
    Wrapped<String?>? imageBase64,
  }) {
    return RestAIPromptTestFunctionPost$RequestBody(
      imageBase64: (imageBase64 != null ? imageBase64.value : this.imageBase64),
    );
  }
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
    chopper.Response response,
  ) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    if (ResultType == DateTime) {
      return response.copyWith(
        body:
            DateTime.parse((response.body as String).replaceAll('"', ''))
                as ResultType,
      );
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
      body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType,
    );
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
