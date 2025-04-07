//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_many_ai_prompt_entity_response_dto.g.dart';

/// GetManyAIPromptEntityResponseDto
///
/// Properties:
/// * [data] 
/// * [count] 
/// * [total] 
/// * [page] 
/// * [pageCount] 
@BuiltValue()
abstract class GetManyAIPromptEntityResponseDto implements Built<GetManyAIPromptEntityResponseDto, GetManyAIPromptEntityResponseDtoBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<JsonObject> get data;

  @BuiltValueField(wireName: r'count')
  num get count;

  @BuiltValueField(wireName: r'total')
  num get total;

  @BuiltValueField(wireName: r'page')
  num get page;

  @BuiltValueField(wireName: r'pageCount')
  num get pageCount;

  GetManyAIPromptEntityResponseDto._();

  factory GetManyAIPromptEntityResponseDto([void updates(GetManyAIPromptEntityResponseDtoBuilder b)]) = _$GetManyAIPromptEntityResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetManyAIPromptEntityResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetManyAIPromptEntityResponseDto> get serializer => _$GetManyAIPromptEntityResponseDtoSerializer();
}

class _$GetManyAIPromptEntityResponseDtoSerializer implements PrimitiveSerializer<GetManyAIPromptEntityResponseDto> {
  @override
  final Iterable<Type> types = const [GetManyAIPromptEntityResponseDto, _$GetManyAIPromptEntityResponseDto];

  @override
  final String wireName = r'GetManyAIPromptEntityResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetManyAIPromptEntityResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
    );
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(num),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(num),
    );
    yield r'page';
    yield serializers.serialize(
      object.page,
      specifiedType: const FullType(num),
    );
    yield r'pageCount';
    yield serializers.serialize(
      object.pageCount,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetManyAIPromptEntityResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetManyAIPromptEntityResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
          ) as BuiltList<JsonObject>;
          result.data.replace(valueDes);
          break;
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.count = valueDes;
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.total = valueDes;
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.page = valueDes;
          break;
        case r'pageCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.pageCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetManyAIPromptEntityResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetManyAIPromptEntityResponseDtoBuilder();
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

