// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_biodata_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _UserBiodataClient implements UserBiodataClient {
  _UserBiodataClient(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<GetManyUserBiodataEntityResponseDto>
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
        _setStreamType<GetManyUserBiodataEntityResponseDto>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/rest/UserBiodata',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = GetManyUserBiodataEntityResponseDto.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserBiodataEntity> createOneBaseUserBiodataControllerUserBiodataEntity(
      {required CreateUserBiodataDto body}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<UserBiodataEntity>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/rest/UserBiodata',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = UserBiodataEntity.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<UserBiodataEntity>>
      createManyBaseUserBiodataControllerUserBiodataEntity(
          {required CreateManyUserBiodataEntityDto body}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio
        .fetch<List<dynamic>>(_setStreamType<List<UserBiodataEntity>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/rest/UserBiodata/bulk',
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
            UserBiodataEntity.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<UserBiodataEntity>
      updateOneBaseUserBiodataControllerUserBiodataEntity({
    required num id,
    required UpdateUserBiodataDto body,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<UserBiodataEntity>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/rest/UserBiodata/${id}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = UserBiodataEntity.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserBiodataEntity>
      replaceOneBaseUserBiodataControllerUserBiodataEntity({
    required num id,
    required UserBiodataEntity body,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<UserBiodataEntity>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/rest/UserBiodata/${id}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = UserBiodataEntity.fromJson(_result.data!);
    return value;
  }

  @override
  Future<void> deleteOneBaseUserBiodataControllerUserBiodataEntity(
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
          '/rest/UserBiodata/${id}',
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
  Future<UserBiodataEntity> getOneBaseUserBiodataControllerUserBiodataEntity({
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
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<UserBiodataEntity>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/rest/UserBiodata/${id}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = UserBiodataEntity.fromJson(_result.data!);
    return value;
  }

  @override
  Future<void> userBiodataController() async {
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
          '/rest/UserBiodata/metadata',
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
