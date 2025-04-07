import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for AIPromptApi
void main() {
  final instance = Openapi().getAIPromptApi();

  group(AIPromptApi, () {
    //Future aIPromptController() async
    test('test aIPromptController', () async {
      // TODO
    });

    //Future aIPromptControllerTestFunction(AIPromptControllerTestFunctionRequest aIPromptControllerTestFunctionRequest) async
    test('test aIPromptControllerTestFunction', () async {
      // TODO
    });

    // Create many AIPromptEntity
    //
    //Future<BuiltList<JsonObject>> createManyBaseAIPromptControllerAIPromptEntity(CreateManyAIPromptEntityDto createManyAIPromptEntityDto) async
    test('test createManyBaseAIPromptControllerAIPromptEntity', () async {
      // TODO
    });

    // Create one AIPromptEntity
    //
    //Future<JsonObject> createOneBaseAIPromptControllerAIPromptEntity(JsonObject body) async
    test('test createOneBaseAIPromptControllerAIPromptEntity', () async {
      // TODO
    });

    // Delete one AIPromptEntity
    //
    //Future deleteOneBaseAIPromptControllerAIPromptEntity(num id) async
    test('test deleteOneBaseAIPromptControllerAIPromptEntity', () async {
      // TODO
    });

    // Retrieve many AIPromptEntity
    //
    //Future<GetManyAIPromptEntityResponseDto> getManyBaseAIPromptControllerAIPromptEntity({ BuiltList<String> fields, String s, BuiltList<String> filter, BuiltList<String> or, BuiltList<String> sort, BuiltList<String> join, int limit, int offset, int page, int cache }) async
    test('test getManyBaseAIPromptControllerAIPromptEntity', () async {
      // TODO
    });

    // Retrieve one AIPromptEntity
    //
    //Future<JsonObject> getOneBaseAIPromptControllerAIPromptEntity(num id, { BuiltList<String> fields, BuiltList<String> join, int cache }) async
    test('test getOneBaseAIPromptControllerAIPromptEntity', () async {
      // TODO
    });

    // Replace one AIPromptEntity
    //
    //Future<JsonObject> replaceOneBaseAIPromptControllerAIPromptEntity(num id, JsonObject body) async
    test('test replaceOneBaseAIPromptControllerAIPromptEntity', () async {
      // TODO
    });

    // Update one AIPromptEntity
    //
    //Future<JsonObject> updateOneBaseAIPromptControllerAIPromptEntity(num id, JsonObject body) async
    test('test updateOneBaseAIPromptControllerAIPromptEntity', () async {
      // TODO
    });

  });
}
