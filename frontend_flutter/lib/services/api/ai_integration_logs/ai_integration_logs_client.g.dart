// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_integration_logs_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _AIIntegrationLogsClient implements AIIntegrationLogsClient {
  _AIIntegrationLogsClient(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<GetManyAIIntegrationLogsEntityResponseDto>
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
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'fields': fields,
      r's': s,
      r'filter': filter,
      r'or': or,
      r'sort': sort,
      r'join': join,
      r'limit': limit,
      r'offset': offset,
      r'page': page,
      r'cache': cache,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetManyAIIntegrationLogsEntityResponseDto>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/rest/AIIntegrationLogs',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value =
        GetManyAIIntegrationLogsEntityResponseDto.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AIIntegrationLogsEntity>
      createOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity(
          {required CreateAIIntegrationLogDto body}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AIIntegrationLogsEntity>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/rest/AIIntegrationLogs',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = AIIntegrationLogsEntity.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<AIIntegrationLogsEntity>>
      createManyBaseAIIntegrationLogsControllerAIIntegrationLogsEntity(
          {required CreateManyAIIntegrationLogsEntityDto body}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<AIIntegrationLogsEntity>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/rest/AIIntegrationLogs/bulk',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    var value = _result.data!
        .map((dynamic i) =>
            AIIntegrationLogsEntity.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<AIIntegrationLogsEntity>
      updateOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity({
    required num id,
    required UpdateAIIntegrationLogDto body,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AIIntegrationLogsEntity>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/rest/AIIntegrationLogs/${id}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = AIIntegrationLogsEntity.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AIIntegrationLogsEntity>
      replaceOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity({
    required num id,
    required AIIntegrationLogsEntity body,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AIIntegrationLogsEntity>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/rest/AIIntegrationLogs/${id}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = AIIntegrationLogsEntity.fromJson(_result.data!);
    return value;
  }

  @override
  Future<void> deleteOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity(
      {required num id}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    await _dio.fetch<void>(_setStreamType<void>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/rest/AIIntegrationLogs/${id}',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        ))));
  }

  @override
  Future<AIIntegrationLogsEntity>
      getOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity({
    required num id,
    List<String>? fields,
    List<String>? join,
    int? cache,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'fields': fields,
      r'join': join,
      r'cache': cache,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AIIntegrationLogsEntity>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/rest/AIIntegrationLogs/${id}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = AIIntegrationLogsEntity.fromJson(_result.data!);
    return value;
  }

  @override
  Future<void> aIIntegrationLogsController() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    await _dio.fetch<void>(_setStreamType<void>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/rest/AIIntegrationLogs/metadata',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        ))));
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
