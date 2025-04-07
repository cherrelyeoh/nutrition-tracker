//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_meal_log_controller_extract_nutrient_details_request.g.dart';

/// UserMealLogControllerExtractNutrientDetailsRequest
///
/// Properties:
/// * [userId] - ID of the user
/// * [mealImage] - Base64-encoded meal image
/// * [mealName] - Name of the meal
@BuiltValue()
abstract class UserMealLogControllerExtractNutrientDetailsRequest implements Built<UserMealLogControllerExtractNutrientDetailsRequest, UserMealLogControllerExtractNutrientDetailsRequestBuilder> {
  /// ID of the user
  @BuiltValueField(wireName: r'userId')
  num? get userId;

  /// Base64-encoded meal image
  @BuiltValueField(wireName: r'mealImage')
  String? get mealImage;

  /// Name of the meal
  @BuiltValueField(wireName: r'mealName')
  String? get mealName;

  UserMealLogControllerExtractNutrientDetailsRequest._();

  factory UserMealLogControllerExtractNutrientDetailsRequest([void updates(UserMealLogControllerExtractNutrientDetailsRequestBuilder b)]) = _$UserMealLogControllerExtractNutrientDetailsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserMealLogControllerExtractNutrientDetailsRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserMealLogControllerExtractNutrientDetailsRequest> get serializer => _$UserMealLogControllerExtractNutrientDetailsRequestSerializer();
}

class _$UserMealLogControllerExtractNutrientDetailsRequestSerializer implements PrimitiveSerializer<UserMealLogControllerExtractNutrientDetailsRequest> {
  @override
  final Iterable<Type> types = const [UserMealLogControllerExtractNutrientDetailsRequest, _$UserMealLogControllerExtractNutrientDetailsRequest];

  @override
  final String wireName = r'UserMealLogControllerExtractNutrientDetailsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserMealLogControllerExtractNutrientDetailsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(num),
      );
    }
    if (object.mealImage != null) {
      yield r'mealImage';
      yield serializers.serialize(
        object.mealImage,
        specifiedType: const FullType(String),
      );
    }
    if (object.mealName != null) {
      yield r'mealName';
      yield serializers.serialize(
        object.mealName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserMealLogControllerExtractNutrientDetailsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserMealLogControllerExtractNutrientDetailsRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.userId = valueDes;
          break;
        case r'mealImage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mealImage = valueDes;
          break;
        case r'mealName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mealName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserMealLogControllerExtractNutrientDetailsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserMealLogControllerExtractNutrientDetailsRequestBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

