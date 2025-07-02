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
  Future<Response<String>> _get() {
    final Uri $url = Uri.parse('/');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<dynamic>> _restAIPromptTestFunctionPost(
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
  Future<Response<GetManyAIPromptEntityResponseDto>> _restAIPromptGet({
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
  Future<Response<AIPromptEntity>> _restAIPromptPost(
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
  Future<Response<List<AIPromptEntity>>> _restAIPromptBulkPost(
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
  Future<Response<AIPromptEntity>> _restAIPromptIdPatch({
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
  Future<Response<AIPromptEntity>> _restAIPromptIdPut({
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
  Future<Response<dynamic>> _restAIPromptIdDelete({required num? id}) {
    final Uri $url = Uri.parse('/rest/AIPrompt/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<AIPromptEntity>> _restAIPromptIdGet({
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
  Future<Response<dynamic>> _restAIPromptMetadataGet() {
    final Uri $url = Uri.parse('/rest/AIPrompt/metadata');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _restUserMealLogExtractNutrientDetailsPost(
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
  Future<Response<GetManyUserMealLogEntityResponseDto>> _restUserMealLogGet({
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
  Future<Response<UserMealLogEntity>> _restUserMealLogPost(
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
  Future<Response<List<UserMealLogEntity>>> _restUserMealLogBulkPost(
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
  Future<Response<UserMealLogEntity>> _restUserMealLogIdPatch({
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
  Future<Response<UserMealLogEntity>> _restUserMealLogIdPut({
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
  Future<Response<dynamic>> _restUserMealLogIdDelete({required num? id}) {
    final Uri $url = Uri.parse('/rest/UserMealLog/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<UserMealLogEntity>> _restUserMealLogIdGet({
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
  Future<Response<dynamic>> _restUserMealLogMetadataGet() {
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
      _restAIIntegrationLogsGet({
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
  Future<Response<AIIntegrationLogsEntity>> _restAIIntegrationLogsPost(
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
      _restAIIntegrationLogsBulkPost(
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
  Future<Response<AIIntegrationLogsEntity>> _restAIIntegrationLogsIdPatch({
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
  Future<Response<AIIntegrationLogsEntity>> _restAIIntegrationLogsIdPut({
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
  Future<Response<dynamic>> _restAIIntegrationLogsIdDelete({required num? id}) {
    final Uri $url = Uri.parse('/rest/AIIntegrationLogs/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<AIIntegrationLogsEntity>> _restAIIntegrationLogsIdGet({
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
  Future<Response<dynamic>> _restAIIntegrationLogsMetadataGet() {
    final Uri $url = Uri.parse('/rest/AIIntegrationLogs/metadata');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<UserEntity>> _restUserSignupPost({required SignUpDto? body}) {
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
  Future<Response<LoginResponseDto>> _restUserLoginPost(
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
  Future<Response<UserEntity>> _restUserPost({required CreateUserDto? body}) {
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
  Future<Response<GetManyUserEntityResponseDto>> _restUserGet({
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
  Future<Response<List<UserEntity>>> _restUserBulkPost(
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
  Future<Response<UserEntity>> _restUserIdPatch({
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
  Future<Response<UserEntity>> _restUserIdPut({
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
  Future<Response<dynamic>> _restUserIdDelete({required num? id}) {
    final Uri $url = Uri.parse('/rest/User/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<UserEntity>> _restUserIdGet({
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
  Future<Response<dynamic>> _restUserMetadataGet() {
    final Uri $url = Uri.parse('/rest/User/metadata');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<GetManyUserMealQuestionsEntityResponseDto>>
      _restUserMealQuestionsGet({
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
  Future<Response<UserMealQuestionsEntity>> _restUserMealQuestionsPost(
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
      _restUserMealQuestionsBulkPost(
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
  Future<Response<UserMealQuestionsEntity>> _restUserMealQuestionsIdPatch({
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
  Future<Response<UserMealQuestionsEntity>> _restUserMealQuestionsIdPut({
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
  Future<Response<dynamic>> _restUserMealQuestionsIdDelete({required num? id}) {
    final Uri $url = Uri.parse('/rest/UserMealQuestions/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<UserMealQuestionsEntity>> _restUserMealQuestionsIdGet({
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
  Future<Response<dynamic>> _restUserMealQuestionsMetadataGet() {
    final Uri $url = Uri.parse('/rest/UserMealQuestions/metadata');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<UserSubMealLogEntity>>> _restUserSubMealLogMainMealIdGet(
      {required num? id}) {
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
      _restUserSubMealLogGet({
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
  Future<Response<UserSubMealLogEntity>> _restUserSubMealLogPost(
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
  Future<Response<List<UserSubMealLogEntity>>> _restUserSubMealLogBulkPost(
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
  Future<Response<UserSubMealLogEntity>> _restUserSubMealLogIdPatch({
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
  Future<Response<UserSubMealLogEntity>> _restUserSubMealLogIdPut({
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
  Future<Response<dynamic>> _restUserSubMealLogIdDelete({required num? id}) {
    final Uri $url = Uri.parse('/rest/UserSubMealLog/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<UserSubMealLogEntity>> _restUserSubMealLogIdGet({
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
  Future<Response<dynamic>> _restUserSubMealLogMetadataGet() {
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
      _restUserBiodataExtractUserBiodataPost(
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
  Future<Response<GetManyUserBiodataEntityResponseDto>> _restUserBiodataGet({
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
  Future<Response<UserBiodataEntity>> _restUserBiodataPost(
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
  Future<Response<List<UserBiodataEntity>>> _restUserBiodataBulkPost(
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
  Future<Response<UserBiodataEntity>> _restUserBiodataIdPatch({
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
  Future<Response<UserBiodataEntity>> _restUserBiodataIdPut({
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
  Future<Response<dynamic>> _restUserBiodataIdDelete({required num? id}) {
    final Uri $url = Uri.parse('/rest/UserBiodata/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<UserBiodataEntity>> _restUserBiodataIdGet({
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
  Future<Response<dynamic>> _restUserBiodataMetadataGet() {
    final Uri $url = Uri.parse('/rest/UserBiodata/metadata');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
