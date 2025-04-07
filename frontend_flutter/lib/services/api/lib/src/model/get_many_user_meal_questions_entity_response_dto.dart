//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_many_user_meal_questions_entity_response_dto.g.dart';

/// GetManyUserMealQuestionsEntityResponseDto
///
/// Properties:
/// * [data] 
/// * [count] 
/// * [total] 
/// * [page] 
/// * [pageCount] 
@BuiltValue()
abstract class GetManyUserMealQuestionsEntityResponseDto implements Built<GetManyUserMealQuestionsEntityResponseDto, GetManyUserMealQuestionsEntityResponseDtoBuilder> {
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

  GetManyUserMealQuestionsEntityResponseDto._();

  factory GetManyUserMealQuestionsEntityResponseDto([void updates(GetManyUserMealQuestionsEntityResponseDtoBuilder b)]) = _$GetManyUserMealQuestionsEntityResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetManyUserMealQuestionsEntityResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetManyUserMealQuestionsEntityResponseDto> get serializer => _$GetManyUserMealQuestionsEntityResponseDtoSerializer();
}

class _$GetManyUserMealQuestionsEntityResponseDtoSerializer implements PrimitiveSerializer<GetManyUserMealQuestionsEntityResponseDto> {
  @override
  final Iterable<Type> types = const [GetManyUserMealQuestionsEntityResponseDto, _$GetManyUserMealQuestionsEntityResponseDto];

  @override
  final String wireName = r'GetManyUserMealQuestionsEntityResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetManyUserMealQuestionsEntityResponseDto object, {
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
    GetManyUserMealQuestionsEntityResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetManyUserMealQuestionsEntityResponseDtoBuilder result,
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
  GetManyUserMealQuestionsEntityResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetManyUserMealQuestionsEntityResponseDtoBuilder();
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

