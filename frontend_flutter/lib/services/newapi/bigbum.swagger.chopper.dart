// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bigbum.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$Bigbum extends Bigbum {
  _$Bigbum([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = Bigbum;

  @override
  Future<Response<String>> _AppController_getHello() {
    final Uri $url = Uri.parse('/');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<dynamic>> _AIPromptController_testFunction(
      {required RestAIPromptTestFunctionPost$RequestBody? body}) {
    final Uri $url = Uri.parse('/rest/AIPrompt/testFunction');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<GetManyAIPromptEntityResponseDto>>
      _getManyBaseAIPromptControllerAIPromptEntity({
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
    final Uri $url = Uri.parse('/rest/AIPrompt');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      's': s,
      'filter': filter,
      'or': or,
      'sort': sort,
      'join': join,
      'limit': limit,
      'offset': offset,
      'page': page,
      'cache': cache,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<GetManyAIPromptEntityResponseDto,
        GetManyAIPromptEntityResponseDto>($request);
  }

  @override
  Future<Response<AIPromptEntity>>
      _createOneBaseAIPromptControllerAIPromptEntity(
          {required AIPromptEntity? body}) {
    final Uri $url = Uri.parse('/rest/AIPrompt');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AIPromptEntity, AIPromptEntity>($request);
  }

  @override
  Future<Response<List<AIPromptEntity>>>
      _createManyBaseAIPromptControllerAIPromptEntity(
          {required CreateManyAIPromptEntityDto? body}) {
    final Uri $url = Uri.parse('/rest/AIPrompt/bulk');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<AIPromptEntity>, AIPromptEntity>($request);
  }

  @override
  Future<Response<AIPromptEntity>>
      _updateOneBaseAIPromptControllerAIPromptEntity({
    required num? id,
    required AIPromptEntity? body,
  }) {
    final Uri $url = Uri.parse('/rest/AIPrompt/${id}');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AIPromptEntity, AIPromptEntity>($request);
  }

  @override
  Future<Response<AIPromptEntity>>
      _replaceOneBaseAIPromptControllerAIPromptEntity({
    required num? id,
    required AIPromptEntity? body,
  }) {
    final Uri $url = Uri.parse('/rest/AIPrompt/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AIPromptEntity, AIPromptEntity>($request);
  }

  @override
  Future<Response<dynamic>> _deleteOneBaseAIPromptControllerAIPromptEntity(
      {required num? id}) {
    final Uri $url = Uri.parse('/rest/AIPrompt/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<AIPromptEntity>> _getOneBaseAIPromptControllerAIPromptEntity({
    required num? id,
    List<String>? fields,
    List<String>? join,
    int? cache,
  }) {
    final Uri $url = Uri.parse('/rest/AIPrompt/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      'join': join,
      'cache': cache,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AIPromptEntity, AIPromptEntity>($request);
  }

  @override
  Future<Response<dynamic>> _AIPromptController_() {
    final Uri $url = Uri.parse('/rest/AIPrompt/metadata');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _UserMealLogController_extractNutrientDetails(
      {required UserMealInputDto? body}) {
    final Uri $url = Uri.parse('/rest/UserMealLog/extractNutrientDetails');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<UserMealLogEntity>>>
      _UserMealLogController_getUserMeals({
    required num? userId,
    required String? startDate,
    required String? endDate,
  }) {
    final Uri $url = Uri.parse('/rest/UserMealLog/mealsByUser/${userId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'startDate': startDate,
      'endDate': endDate,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<UserMealLogEntity>, UserMealLogEntity>($request);
  }

  @override
  Future<Response<GetManyUserMealLogEntityResponseDto>>
      _getManyBaseUserMealLogControllerUserMealLogEntity({
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
    final Uri $url = Uri.parse('/rest/UserMealLog');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      's': s,
      'filter': filter,
      'or': or,
      'sort': sort,
      'join': join,
      'limit': limit,
      'offset': offset,
      'page': page,
      'cache': cache,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<GetManyUserMealLogEntityResponseDto,
        GetManyUserMealLogEntityResponseDto>($request);
  }

  @override
  Future<Response<UserMealLogEntity>>
      _createOneBaseUserMealLogControllerUserMealLogEntity(
          {required UserMealLogEntity? body}) {
    final Uri $url = Uri.parse('/rest/UserMealLog');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserMealLogEntity, UserMealLogEntity>($request);
  }

  @override
  Future<Response<List<UserMealLogEntity>>>
      _createManyBaseUserMealLogControllerUserMealLogEntity(
          {required CreateManyUserMealLogEntityDto? body}) {
    final Uri $url = Uri.parse('/rest/UserMealLog/bulk');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<UserMealLogEntity>, UserMealLogEntity>($request);
  }

  @override
  Future<Response<UserMealLogEntity>>
      _updateOneBaseUserMealLogControllerUserMealLogEntity({
    required num? id,
    required UserMealLogEntity? body,
  }) {
    final Uri $url = Uri.parse('/rest/UserMealLog/${id}');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserMealLogEntity, UserMealLogEntity>($request);
  }

  @override
  Future<Response<UserMealLogEntity>>
      _replaceOneBaseUserMealLogControllerUserMealLogEntity({
    required num? id,
    required UserMealLogEntity? body,
  }) {
    final Uri $url = Uri.parse('/rest/UserMealLog/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserMealLogEntity, UserMealLogEntity>($request);
  }

  @override
  Future<Response<dynamic>>
      _deleteOneBaseUserMealLogControllerUserMealLogEntity({required num? id}) {
    final Uri $url = Uri.parse('/rest/UserMealLog/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<UserMealLogEntity>>
      _getOneBaseUserMealLogControllerUserMealLogEntity({
    required num? id,
    List<String>? fields,
    List<String>? join,
    int? cache,
  }) {
    final Uri $url = Uri.parse('/rest/UserMealLog/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      'join': join,
      'cache': cache,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<UserMealLogEntity, UserMealLogEntity>($request);
  }

  @override
  Future<Response<dynamic>> _UserMealLogController_() {
    final Uri $url = Uri.parse('/rest/UserMealLog/metadata');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<GetManyAIIntegrationLogsEntityResponseDto>>
      _getManyBaseAIIntegrationLogsControllerAIIntegrationLogsEntity({
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
    final Uri $url = Uri.parse('/rest/AIIntegrationLogs');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      's': s,
      'filter': filter,
      'or': or,
      'sort': sort,
      'join': join,
      'limit': limit,
      'offset': offset,
      'page': page,
      'cache': cache,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<GetManyAIIntegrationLogsEntityResponseDto,
        GetManyAIIntegrationLogsEntityResponseDto>($request);
  }

  @override
  Future<Response<AIIntegrationLogsEntity>>
      _createOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity(
          {required CreateAIIntegrationLogDto? body}) {
    final Uri $url = Uri.parse('/rest/AIIntegrationLogs');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<AIIntegrationLogsEntity, AIIntegrationLogsEntity>($request);
  }

  @override
  Future<Response<List<AIIntegrationLogsEntity>>>
      _createManyBaseAIIntegrationLogsControllerAIIntegrationLogsEntity(
          {required CreateManyAIIntegrationLogsEntityDto? body}) {
    final Uri $url = Uri.parse('/rest/AIIntegrationLogs/bulk');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<List<AIIntegrationLogsEntity>, AIIntegrationLogsEntity>($request);
  }

  @override
  Future<Response<AIIntegrationLogsEntity>>
      _updateOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity({
    required num? id,
    required UpdateAIIntegrationLogDto? body,
  }) {
    final Uri $url = Uri.parse('/rest/AIIntegrationLogs/${id}');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<AIIntegrationLogsEntity, AIIntegrationLogsEntity>($request);
  }

  @override
  Future<Response<AIIntegrationLogsEntity>>
      _replaceOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity({
    required num? id,
    required AIIntegrationLogsEntity? body,
  }) {
    final Uri $url = Uri.parse('/rest/AIIntegrationLogs/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<AIIntegrationLogsEntity, AIIntegrationLogsEntity>($request);
  }

  @override
  Future<Response<dynamic>>
      _deleteOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity(
          {required num? id}) {
    final Uri $url = Uri.parse('/rest/AIIntegrationLogs/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<AIIntegrationLogsEntity>>
      _getOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity({
    required num? id,
    List<String>? fields,
    List<String>? join,
    int? cache,
  }) {
    final Uri $url = Uri.parse('/rest/AIIntegrationLogs/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      'join': join,
      'cache': cache,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<AIIntegrationLogsEntity, AIIntegrationLogsEntity>($request);
  }

  @override
  Future<Response<dynamic>> _AIIntegrationLogsController_() {
    final Uri $url = Uri.parse('/rest/AIIntegrationLogs/metadata');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<UserEntity>> _UserController_signUp(
      {required SignUpDto? body}) {
    final Uri $url = Uri.parse('/rest/User/signup');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserEntity, UserEntity>($request);
  }

  @override
  Future<Response<LoginResponseDto>> _UserController_login(
      {required LoginDto? body}) {
    final Uri $url = Uri.parse('/rest/User/login');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<LoginResponseDto, LoginResponseDto>($request);
  }

  @override
  Future<Response<UserEntity>> _createOneBaseUserControllerUserEntity(
      {required CreateUserDto? body}) {
    final Uri $url = Uri.parse('/rest/User');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserEntity, UserEntity>($request);
  }

  @override
  Future<Response<GetManyUserEntityResponseDto>>
      _getManyBaseUserControllerUserEntity({
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
    final Uri $url = Uri.parse('/rest/User');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      's': s,
      'filter': filter,
      'or': or,
      'sort': sort,
      'join': join,
      'limit': limit,
      'offset': offset,
      'page': page,
      'cache': cache,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<GetManyUserEntityResponseDto,
        GetManyUserEntityResponseDto>($request);
  }

  @override
  Future<Response<List<UserEntity>>> _createManyBaseUserControllerUserEntity(
      {required CreateManyUserEntityDto? body}) {
    final Uri $url = Uri.parse('/rest/User/bulk');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<UserEntity>, UserEntity>($request);
  }

  @override
  Future<Response<UserEntity>> _updateOneBaseUserControllerUserEntity({
    required num? id,
    required UpdateUserDto? body,
  }) {
    final Uri $url = Uri.parse('/rest/User/${id}');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserEntity, UserEntity>($request);
  }

  @override
  Future<Response<UserEntity>> _replaceOneBaseUserControllerUserEntity({
    required num? id,
    required UserEntity? body,
  }) {
    final Uri $url = Uri.parse('/rest/User/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserEntity, UserEntity>($request);
  }

  @override
  Future<Response<dynamic>> _deleteOneBaseUserControllerUserEntity(
      {required num? id}) {
    final Uri $url = Uri.parse('/rest/User/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<UserEntity>> _getOneBaseUserControllerUserEntity({
    required num? id,
    List<String>? fields,
    List<String>? join,
    int? cache,
  }) {
    final Uri $url = Uri.parse('/rest/User/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      'join': join,
      'cache': cache,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<UserEntity, UserEntity>($request);
  }

  @override
  Future<Response<dynamic>> _UserController_() {
    final Uri $url = Uri.parse('/rest/User/metadata');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<UserMealQuestionsEntity>>>
      _UserMealQuestionsController_bulkUpdate(
          {required List<UpdateUserMealQuestionDto>? body}) {
    final Uri $url = Uri.parse('/rest/UserMealQuestions/bulk-update');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<List<UserMealQuestionsEntity>, UserMealQuestionsEntity>($request);
  }

  @override
  Future<Response<GetManyUserMealQuestionsEntityResponseDto>>
      _getManyBaseUserMealQuestionsControllerUserMealQuestionsEntity({
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
    final Uri $url = Uri.parse('/rest/UserMealQuestions');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      's': s,
      'filter': filter,
      'or': or,
      'sort': sort,
      'join': join,
      'limit': limit,
      'offset': offset,
      'page': page,
      'cache': cache,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<GetManyUserMealQuestionsEntityResponseDto,
        GetManyUserMealQuestionsEntityResponseDto>($request);
  }

  @override
  Future<Response<UserMealQuestionsEntity>>
      _createOneBaseUserMealQuestionsControllerUserMealQuestionsEntity(
          {required CreateUserMealQuestionDto? body}) {
    final Uri $url = Uri.parse('/rest/UserMealQuestions');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<UserMealQuestionsEntity, UserMealQuestionsEntity>($request);
  }

  @override
  Future<Response<List<UserMealQuestionsEntity>>>
      _createManyBaseUserMealQuestionsControllerUserMealQuestionsEntity(
          {required CreateManyUserMealQuestionsEntityDto? body}) {
    final Uri $url = Uri.parse('/rest/UserMealQuestions/bulk');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<List<UserMealQuestionsEntity>, UserMealQuestionsEntity>($request);
  }

  @override
  Future<Response<UserMealQuestionsEntity>>
      _updateOneBaseUserMealQuestionsControllerUserMealQuestionsEntity({
    required num? id,
    required UpdateUserMealQuestionDto? body,
  }) {
    final Uri $url = Uri.parse('/rest/UserMealQuestions/${id}');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<UserMealQuestionsEntity, UserMealQuestionsEntity>($request);
  }

  @override
  Future<Response<UserMealQuestionsEntity>>
      _replaceOneBaseUserMealQuestionsControllerUserMealQuestionsEntity({
    required num? id,
    required UserMealQuestionsEntity? body,
  }) {
    final Uri $url = Uri.parse('/rest/UserMealQuestions/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<UserMealQuestionsEntity, UserMealQuestionsEntity>($request);
  }

  @override
  Future<Response<dynamic>>
      _deleteOneBaseUserMealQuestionsControllerUserMealQuestionsEntity(
          {required num? id}) {
    final Uri $url = Uri.parse('/rest/UserMealQuestions/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<UserMealQuestionsEntity>>
      _getOneBaseUserMealQuestionsControllerUserMealQuestionsEntity({
    required num? id,
    List<String>? fields,
    List<String>? join,
    int? cache,
  }) {
    final Uri $url = Uri.parse('/rest/UserMealQuestions/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      'join': join,
      'cache': cache,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<UserMealQuestionsEntity, UserMealQuestionsEntity>($request);
  }

  @override
  Future<Response<dynamic>> _UserMealQuestionsController_() {
    final Uri $url = Uri.parse('/rest/UserMealQuestions/metadata');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<UserSubMealLogEntity>>>
      _UserSubMealLogController_getByMainMealId({required num? id}) {
    final Uri $url = Uri.parse('/rest/UserSubMealLog/main-meal/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<UserSubMealLogEntity>, UserSubMealLogEntity>($request);
  }

  @override
  Future<Response<GetManyUserSubMealLogEntityResponseDto>>
      _getManyBaseUserSubMealLogControllerUserSubMealLogEntity({
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
    final Uri $url = Uri.parse('/rest/UserSubMealLog');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      's': s,
      'filter': filter,
      'or': or,
      'sort': sort,
      'join': join,
      'limit': limit,
      'offset': offset,
      'page': page,
      'cache': cache,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<GetManyUserSubMealLogEntityResponseDto,
        GetManyUserSubMealLogEntityResponseDto>($request);
  }

  @override
  Future<Response<UserSubMealLogEntity>>
      _createOneBaseUserSubMealLogControllerUserSubMealLogEntity(
          {required CreateUserSubMealLogDto? body}) {
    final Uri $url = Uri.parse('/rest/UserSubMealLog');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserSubMealLogEntity, UserSubMealLogEntity>($request);
  }

  @override
  Future<Response<List<UserSubMealLogEntity>>>
      _createManyBaseUserSubMealLogControllerUserSubMealLogEntity(
          {required CreateManyUserSubMealLogEntityDto? body}) {
    final Uri $url = Uri.parse('/rest/UserSubMealLog/bulk');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<List<UserSubMealLogEntity>, UserSubMealLogEntity>($request);
  }

  @override
  Future<Response<UserSubMealLogEntity>>
      _updateOneBaseUserSubMealLogControllerUserSubMealLogEntity({
    required num? id,
    required UpdateUserSubMealLogDto? body,
  }) {
    final Uri $url = Uri.parse('/rest/UserSubMealLog/${id}');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserSubMealLogEntity, UserSubMealLogEntity>($request);
  }

  @override
  Future<Response<UserSubMealLogEntity>>
      _replaceOneBaseUserSubMealLogControllerUserSubMealLogEntity({
    required num? id,
    required UserSubMealLogEntity? body,
  }) {
    final Uri $url = Uri.parse('/rest/UserSubMealLog/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserSubMealLogEntity, UserSubMealLogEntity>($request);
  }

  @override
  Future<Response<dynamic>>
      _deleteOneBaseUserSubMealLogControllerUserSubMealLogEntity(
          {required num? id}) {
    final Uri $url = Uri.parse('/rest/UserSubMealLog/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<UserSubMealLogEntity>>
      _getOneBaseUserSubMealLogControllerUserSubMealLogEntity({
    required num? id,
    List<String>? fields,
    List<String>? join,
    int? cache,
  }) {
    final Uri $url = Uri.parse('/rest/UserSubMealLog/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      'join': join,
      'cache': cache,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<UserSubMealLogEntity, UserSubMealLogEntity>($request);
  }

  @override
  Future<Response<dynamic>> _UserSubMealLogController_() {
    final Uri $url = Uri.parse('/rest/UserSubMealLog/metadata');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<ExtractBiodataOutputDto>>
      _UserBiodataController_extractUserBiodata(
          {required ExtractBiodataInputDto? body}) {
    final Uri $url = Uri.parse('/rest/UserBiodata/extractUserBiodata');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<ExtractBiodataOutputDto, ExtractBiodataOutputDto>($request);
  }

  @override
  Future<Response<GetManyUserBiodataEntityResponseDto>>
      _getManyBaseUserBiodataControllerUserBiodataEntity({
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
    final Uri $url = Uri.parse('/rest/UserBiodata');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      's': s,
      'filter': filter,
      'or': or,
      'sort': sort,
      'join': join,
      'limit': limit,
      'offset': offset,
      'page': page,
      'cache': cache,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<GetManyUserBiodataEntityResponseDto,
        GetManyUserBiodataEntityResponseDto>($request);
  }

  @override
  Future<Response<UserBiodataEntity>>
      _createOneBaseUserBiodataControllerUserBiodataEntity(
          {required CreateUserBiodataDto? body}) {
    final Uri $url = Uri.parse('/rest/UserBiodata');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserBiodataEntity, UserBiodataEntity>($request);
  }

  @override
  Future<Response<List<UserBiodataEntity>>>
      _createManyBaseUserBiodataControllerUserBiodataEntity(
          {required CreateManyUserBiodataEntityDto? body}) {
    final Uri $url = Uri.parse('/rest/UserBiodata/bulk');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<UserBiodataEntity>, UserBiodataEntity>($request);
  }

  @override
  Future<Response<UserBiodataEntity>>
      _updateOneBaseUserBiodataControllerUserBiodataEntity({
    required num? id,
    required UpdateUserBiodataDto? body,
  }) {
    final Uri $url = Uri.parse('/rest/UserBiodata/${id}');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserBiodataEntity, UserBiodataEntity>($request);
  }

  @override
  Future<Response<UserBiodataEntity>>
      _replaceOneBaseUserBiodataControllerUserBiodataEntity({
    required num? id,
    required UserBiodataEntity? body,
  }) {
    final Uri $url = Uri.parse('/rest/UserBiodata/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserBiodataEntity, UserBiodataEntity>($request);
  }

  @override
  Future<Response<dynamic>>
      _deleteOneBaseUserBiodataControllerUserBiodataEntity({required num? id}) {
    final Uri $url = Uri.parse('/rest/UserBiodata/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<UserBiodataEntity>>
      _getOneBaseUserBiodataControllerUserBiodataEntity({
    required num? id,
    List<String>? fields,
    List<String>? join,
    int? cache,
  }) {
    final Uri $url = Uri.parse('/rest/UserBiodata/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      'join': join,
      'cache': cache,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<UserBiodataEntity, UserBiodataEntity>($request);
  }

  @override
  Future<Response<dynamic>> _UserBiodataController_() {
    final Uri $url = Uri.parse('/rest/UserBiodata/metadata');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<AuthLoginResponseDto>> _AuthController_login(
      {required AuthLoginDto? body}) {
    final Uri $url = Uri.parse('/rest/Auth/login');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AuthLoginResponseDto, AuthLoginResponseDto>($request);
  }

  @override
  Future<Response<AuthRefreshResponseDto>> _AuthController_refresh(
      {required AuthRefreshDto? body}) {
    final Uri $url = Uri.parse('/rest/Auth/refresh');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<AuthRefreshResponseDto, AuthRefreshResponseDto>($request);
  }

  @override
  Future<Response<AuthLogoutResponseDto>> _AuthController_logout(
      {required AuthLogoutDto? body}) {
    final Uri $url = Uri.parse('/rest/Auth/logout');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AuthLogoutResponseDto, AuthLogoutResponseDto>($request);
  }

  @override
  Future<Response<GetManyAuthEntityResponseDto>>
      _getManyBaseAuthControllerAuthEntity({
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
    final Uri $url = Uri.parse('/rest/Auth');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      's': s,
      'filter': filter,
      'or': or,
      'sort': sort,
      'join': join,
      'limit': limit,
      'offset': offset,
      'page': page,
      'cache': cache,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<GetManyAuthEntityResponseDto,
        GetManyAuthEntityResponseDto>($request);
  }

  @override
  Future<Response<AuthEntity>> _createOneBaseAuthControllerAuthEntity(
      {required AuthEntity? body}) {
    final Uri $url = Uri.parse('/rest/Auth');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AuthEntity, AuthEntity>($request);
  }

  @override
  Future<Response<List<AuthEntity>>> _createManyBaseAuthControllerAuthEntity(
      {required CreateManyAuthEntityDto? body}) {
    final Uri $url = Uri.parse('/rest/Auth/bulk');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<AuthEntity>, AuthEntity>($request);
  }

  @override
  Future<Response<AuthEntity>> _updateOneBaseAuthControllerAuthEntity({
    required num? id,
    required AuthEntity? body,
  }) {
    final Uri $url = Uri.parse('/rest/Auth/${id}');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AuthEntity, AuthEntity>($request);
  }

  @override
  Future<Response<AuthEntity>> _replaceOneBaseAuthControllerAuthEntity({
    required num? id,
    required AuthEntity? body,
  }) {
    final Uri $url = Uri.parse('/rest/Auth/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AuthEntity, AuthEntity>($request);
  }

  @override
  Future<Response<dynamic>> _deleteOneBaseAuthControllerAuthEntity(
      {required num? id}) {
    final Uri $url = Uri.parse('/rest/Auth/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<AuthEntity>> _getOneBaseAuthControllerAuthEntity({
    required num? id,
    List<String>? fields,
    List<String>? join,
    int? cache,
  }) {
    final Uri $url = Uri.parse('/rest/Auth/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      'join': join,
      'cache': cache,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AuthEntity, AuthEntity>($request);
  }

  @override
  Future<Response<dynamic>> _AuthController_() {
    final Uri $url = Uri.parse('/rest/Auth/metadata');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
