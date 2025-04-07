//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_many_ai_integration_logs_entity_dto.g.dart';

/// CreateManyAIIntegrationLogsEntityDto
///
/// Properties:
/// * [bulk] 
@BuiltValue()
abstract class CreateManyAIIntegrationLogsEntityDto implements Built<CreateManyAIIntegrationLogsEntityDto, CreateManyAIIntegrationLogsEntityDtoBuilder> {
  @BuiltValueField(wireName: r'bulk')
  BuiltList<JsonObject> get bulk;

  CreateManyAIIntegrationLogsEntityDto._();

  factory CreateManyAIIntegrationLogsEntityDto([void updates(CreateManyAIIntegrationLogsEntityDtoBuilder b)]) = _$CreateManyAIIntegrationLogsEntityDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateManyAIIntegrationLogsEntityDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateManyAIIntegrationLogsEntityDto> get serializer => _$CreateManyAIIntegrationLogsEntityDtoSerializer();
}

class _$CreateManyAIIntegrationLogsEntityDtoSerializer implements PrimitiveSerializer<CreateManyAIIntegrationLogsEntityDto> {
  @override
  final Iterable<Type> types = const [CreateManyAIIntegrationLogsEntityDto, _$CreateManyAIIntegrationLogsEntityDto];

  @override
  final String wireName = r'CreateManyAIIntegrationLogsEntityDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateManyAIIntegrationLogsEntityDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'bulk';
    yield serializers.serialize(
      object.bulk,
      specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateManyAIIntegrationLogsEntityDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateManyAIIntegrationLogsEntityDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'bulk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
          ) as BuiltList<JsonObject>;
          result.bulk.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateManyAIIntegrationLogsEntityDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateManyAIIntegrationLogsEntityDtoBuilder();
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

