//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/meal_result_response.dart';
import 'package:openapi/src/model/meal_question_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'user_meal_log_controller_extract_nutrient_details200_response.g.dart';

/// UserMealLogControllerExtractNutrientDetails200Response
@BuiltValue()
abstract class UserMealLogControllerExtractNutrientDetails200Response implements Built<UserMealLogControllerExtractNutrientDetails200Response, UserMealLogControllerExtractNutrientDetails200ResponseBuilder> {
  /// One Of [MealQuestionResponse], [MealResultResponse]
  OneOf get oneOf;

  UserMealLogControllerExtractNutrientDetails200Response._();

  factory UserMealLogControllerExtractNutrientDetails200Response([void updates(UserMealLogControllerExtractNutrientDetails200ResponseBuilder b)]) = _$UserMealLogControllerExtractNutrientDetails200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserMealLogControllerExtractNutrientDetails200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserMealLogControllerExtractNutrientDetails200Response> get serializer => _$UserMealLogControllerExtractNutrientDetails200ResponseSerializer();
}

class _$UserMealLogControllerExtractNutrientDetails200ResponseSerializer implements PrimitiveSerializer<UserMealLogControllerExtractNutrientDetails200Response> {
  @override
  final Iterable<Type> types = const [UserMealLogControllerExtractNutrientDetails200Response, _$UserMealLogControllerExtractNutrientDetails200Response];

  @override
  final String wireName = r'UserMealLogControllerExtractNutrientDetails200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserMealLogControllerExtractNutrientDetails200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    UserMealLogControllerExtractNutrientDetails200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  UserMealLogControllerExtractNutrientDetails200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserMealLogControllerExtractNutrientDetails200ResponseBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(MealQuestionResponse), FullType(MealResultResponse), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}

