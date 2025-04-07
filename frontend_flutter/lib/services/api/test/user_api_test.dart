import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for UserApi
void main() {
  final instance = Openapi().getUserApi();

  group(UserApi, () {
    // Create many UserEntity
    //
    //Future<BuiltList<JsonObject>> createManyBaseUserControllerUserEntity(CreateManyUserEntityDto createManyUserEntityDto) async
    test('test createManyBaseUserControllerUserEntity', () async {
      // TODO
    });

    // Create one UserEntity
    //
    //Future<JsonObject> createOneBaseUserControllerUserEntity(JsonObject body) async
    test('test createOneBaseUserControllerUserEntity', () async {
      // TODO
    });

    // Delete one UserEntity
    //
    //Future deleteOneBaseUserControllerUserEntity(num id) async
    test('test deleteOneBaseUserControllerUserEntity', () async {
      // TODO
    });

    // Retrieve many UserEntity
    //
    //Future<GetManyUserEntityResponseDto> getManyBaseUserControllerUserEntity({ BuiltList<String> fields, String s, BuiltList<String> filter, BuiltList<String> or, BuiltList<String> sort, BuiltList<String> join, int limit, int offset, int page, int cache }) async
    test('test getManyBaseUserControllerUserEntity', () async {
      // TODO
    });

    // Retrieve one UserEntity
    //
    //Future<JsonObject> getOneBaseUserControllerUserEntity(num id, { BuiltList<String> fields, BuiltList<String> join, int cache }) async
    test('test getOneBaseUserControllerUserEntity', () async {
      // TODO
    });

    // Replace one UserEntity
    //
    //Future<JsonObject> replaceOneBaseUserControllerUserEntity(num id, JsonObject body) async
    test('test replaceOneBaseUserControllerUserEntity', () async {
      // TODO
    });

    // Update one UserEntity
    //
    //Future<JsonObject> updateOneBaseUserControllerUserEntity(num id, JsonObject body) async
    test('test updateOneBaseUserControllerUserEntity', () async {
      // TODO
    });

    //Future userController() async
    test('test userController', () async {
      // TODO
    });

  });
}
