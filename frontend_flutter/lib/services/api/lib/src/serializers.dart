//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/ai_prompt_controller_test_function_request.dart';
import 'package:openapi/src/model/create_many_ai_integration_logs_entity_dto.dart';
import 'package:openapi/src/model/create_many_ai_prompt_entity_dto.dart';
import 'package:openapi/src/model/create_many_user_entity_dto.dart';
import 'package:openapi/src/model/create_many_user_meal_log_entity_dto.dart';
import 'package:openapi/src/model/create_many_user_meal_questions_entity_dto.dart';
import 'package:openapi/src/model/get_many_ai_integration_logs_entity_response_dto.dart';
import 'package:openapi/src/model/get_many_ai_prompt_entity_response_dto.dart';
import 'package:openapi/src/model/get_many_user_entity_response_dto.dart';
import 'package:openapi/src/model/get_many_user_meal_log_entity_response_dto.dart';
import 'package:openapi/src/model/get_many_user_meal_questions_entity_response_dto.dart';
import 'package:openapi/src/model/user_meal_log_controller_extract_nutrient_details200_response.dart';
import 'package:openapi/src/model/user_meal_log_controller_extract_nutrient_details_request.dart';

part 'serializers.g.dart';

@SerializersFor([
  AIPromptControllerTestFunctionRequest,
  CreateManyAIIntegrationLogsEntityDto,
  CreateManyAIPromptEntityDto,
  CreateManyUserEntityDto,
  CreateManyUserMealLogEntityDto,
  CreateManyUserMealQuestionsEntityDto,
  GetManyAIIntegrationLogsEntityResponseDto,
  GetManyAIPromptEntityResponseDto,
  GetManyUserEntityResponseDto,
  GetManyUserMealLogEntityResponseDto,
  GetManyUserMealQuestionsEntityResponseDto,
  UserMealLogControllerExtractNutrientDetails200Response,
  UserMealLogControllerExtractNutrientDetailsRequest,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(JsonObject)]),
        () => ListBuilder<JsonObject>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(String)]),
        () => ListBuilder<String>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
