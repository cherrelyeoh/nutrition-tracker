// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/create_many_user_biodata_entity_dto.dart';
import '../models/create_user_biodata_dto.dart';
import '../models/extract_biodata_input_dto.dart';
import '../models/get_many_user_biodata_entity_response_dto.dart';
import '../models/update_user_biodata_dto.dart';
import '../models/user_biodata_entity.dart';

part 'user_biodata_client.g.dart';

@RestApi()
abstract class UserBiodataClient {
  factory UserBiodataClient(Dio dio, {String? baseUrl}) = _UserBiodataClient;

  @POST('/rest/UserBiodata/extractUserBiodata')
  Future<void> userBiodataControllerExtractUserBiodata({
    @Body() required ExtractBiodataInputDto body,
  });

  /// Retrieve multiple UserBiodataEntities.
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
  @GET('/rest/UserBiodata')
  Future<GetManyUserBiodataEntityResponseDto> getManyBaseUserBiodataControllerUserBiodataEntity({
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

  /// Create a single UserBiodataEntity
  @POST('/rest/UserBiodata')
  Future<UserBiodataEntity> createOneBaseUserBiodataControllerUserBiodataEntity({
    @Body() required CreateUserBiodataDto body,
  });

  /// Create multiple UserBiodataEntities
  @POST('/rest/UserBiodata/bulk')
  Future<List<UserBiodataEntity>> createManyBaseUserBiodataControllerUserBiodataEntity({
    @Body() required CreateManyUserBiodataEntityDto body,
  });

  /// Update a single UserBiodataEntity
  @PATCH('/rest/UserBiodata/{id}')
  Future<UserBiodataEntity> updateOneBaseUserBiodataControllerUserBiodataEntity({
    @Path('id') required num id,
    @Body() required UpdateUserBiodataDto body,
  });

  /// Replace a single UserBiodataEntity
  @PUT('/rest/UserBiodata/{id}')
  Future<UserBiodataEntity> replaceOneBaseUserBiodataControllerUserBiodataEntity({
    @Path('id') required num id,
    @Body() required UserBiodataEntity body,
  });

  /// Delete a single UserBiodataEntity
  @DELETE('/rest/UserBiodata/{id}')
  Future<void> deleteOneBaseUserBiodataControllerUserBiodataEntity({
    @Path('id') required num id,
  });

  /// Retrieve a single UserBiodataEntity.
  ///
  /// [fields] - Selects resource fields. <a href="https://github.com/nestjsx/crud/wiki/Requests#select" target="_blank">Docs</a>.
  ///
  /// [join] - Adds relational resources. <a href="https://github.com/nestjsx/crud/wiki/Requests#join" target="_blank">Docs</a>.
  ///
  /// [cache] - Reset cache (if was enabled). <a href="https://github.com/nestjsx/crud/wiki/Requests#cache" target="_blank">Docs</a>.
  @GET('/rest/UserBiodata/{id}')
  Future<UserBiodataEntity> getOneBaseUserBiodataControllerUserBiodataEntity({
    @Path('id') required num id,
    @Query('fields') List<String>? fields,
    @Query('join') List<String>? join,
    @Query('cache') int? cache,
  });

  @GET('/rest/UserBiodata/metadata')
  Future<void> userBiodataController();
}
