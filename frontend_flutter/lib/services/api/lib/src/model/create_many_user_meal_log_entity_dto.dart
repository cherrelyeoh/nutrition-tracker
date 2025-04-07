//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_many_user_meal_log_entity_dto.g.dart';

/// CreateManyUserMealLogEntityDto
///
/// Properties:
/// * [bulk] 
@BuiltValue()
abstract class CreateManyUserMealLogEntityDto implements Built<CreateManyUserMealLogEntityDto, CreateManyUserMealLogEntityDtoBuilder> {
  @BuiltValueField(wireName: r'bulk')
  BuiltList<JsonObject> get bulk;

  CreateManyUserMealLogEntityDto._();

  factory CreateManyUserMealLogEntityDto([void updates(CreateManyUserMealLogEntityDtoBuilder b)]) = _$CreateManyUserMealLogEntityDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateManyUserMealLogEntityDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateManyUserMealLogEntityDto> get serializer => _$CreateManyUserMealLogEntityDtoSerializer();
}

class _$CreateManyUserMealLogEntityDtoSerializer implements PrimitiveSerializer<CreateManyUserMealLogEntityDto> {
  @override
  final Iterable<Type> types = const [CreateManyUserMealLogEntityDto, _$CreateManyUserMealLogEntityDto];

  @override
  final String wireName = r'CreateManyUserMealLogEntityDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateManyUserMealLogEntityDto object, {
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
    CreateManyUserMealLogEntityDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateManyUserMealLogEntityDtoBuilder result,
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
  CreateManyUserMealLogEntityDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateManyUserMealLogEntityDtoBuilder();
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

