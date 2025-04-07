//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ai_prompt_controller_test_function_request.g.dart';

/// AIPromptControllerTestFunctionRequest
///
/// Properties:
/// * [imageBase64] - Base64-encoded image
@BuiltValue()
abstract class AIPromptControllerTestFunctionRequest implements Built<AIPromptControllerTestFunctionRequest, AIPromptControllerTestFunctionRequestBuilder> {
  /// Base64-encoded image
  @BuiltValueField(wireName: r'imageBase64')
  String? get imageBase64;

  AIPromptControllerTestFunctionRequest._();

  factory AIPromptControllerTestFunctionRequest([void updates(AIPromptControllerTestFunctionRequestBuilder b)]) = _$AIPromptControllerTestFunctionRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AIPromptControllerTestFunctionRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AIPromptControllerTestFunctionRequest> get serializer => _$AIPromptControllerTestFunctionRequestSerializer();
}

class _$AIPromptControllerTestFunctionRequestSerializer implements PrimitiveSerializer<AIPromptControllerTestFunctionRequest> {
  @override
  final Iterable<Type> types = const [AIPromptControllerTestFunctionRequest, _$AIPromptControllerTestFunctionRequest];

  @override
  final String wireName = r'AIPromptControllerTestFunctionRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AIPromptControllerTestFunctionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.imageBase64 != null) {
      yield r'imageBase64';
      yield serializers.serialize(
        object.imageBase64,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AIPromptControllerTestFunctionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AIPromptControllerTestFunctionRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'imageBase64':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.imageBase64 = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AIPromptControllerTestFunctionRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AIPromptControllerTestFunctionRequestBuilder();
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

