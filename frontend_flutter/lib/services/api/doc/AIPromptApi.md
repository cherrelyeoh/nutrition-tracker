# openapi.api.AIPromptApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aIPromptController**](AIPromptApi.md#aipromptcontroller) | **GET** /rest/AIPrompt/metadata | 
[**aIPromptControllerTestFunction**](AIPromptApi.md#aipromptcontrollertestfunction) | **POST** /rest/AIPrompt/testFunction | 
[**createManyBaseAIPromptControllerAIPromptEntity**](AIPromptApi.md#createmanybaseaipromptcontrolleraipromptentity) | **POST** /rest/AIPrompt/bulk | Create many AIPromptEntity
[**createOneBaseAIPromptControllerAIPromptEntity**](AIPromptApi.md#createonebaseaipromptcontrolleraipromptentity) | **POST** /rest/AIPrompt | Create one AIPromptEntity
[**deleteOneBaseAIPromptControllerAIPromptEntity**](AIPromptApi.md#deleteonebaseaipromptcontrolleraipromptentity) | **DELETE** /rest/AIPrompt/{id} | Delete one AIPromptEntity
[**getManyBaseAIPromptControllerAIPromptEntity**](AIPromptApi.md#getmanybaseaipromptcontrolleraipromptentity) | **GET** /rest/AIPrompt | Retrieve many AIPromptEntity
[**getOneBaseAIPromptControllerAIPromptEntity**](AIPromptApi.md#getonebaseaipromptcontrolleraipromptentity) | **GET** /rest/AIPrompt/{id} | Retrieve one AIPromptEntity
[**replaceOneBaseAIPromptControllerAIPromptEntity**](AIPromptApi.md#replaceonebaseaipromptcontrolleraipromptentity) | **PUT** /rest/AIPrompt/{id} | Replace one AIPromptEntity
[**updateOneBaseAIPromptControllerAIPromptEntity**](AIPromptApi.md#updateonebaseaipromptcontrolleraipromptentity) | **PATCH** /rest/AIPrompt/{id} | Update one AIPromptEntity


# **aIPromptController**
> aIPromptController()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAIPromptApi();

try {
    api.aIPromptController();
} catch on DioException (e) {
    print('Exception when calling AIPromptApi->aIPromptController: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aIPromptControllerTestFunction**
> aIPromptControllerTestFunction(aIPromptControllerTestFunctionRequest)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAIPromptApi();
final AIPromptControllerTestFunctionRequest aIPromptControllerTestFunctionRequest = ; // AIPromptControllerTestFunctionRequest | 

try {
    api.aIPromptControllerTestFunction(aIPromptControllerTestFunctionRequest);
} catch on DioException (e) {
    print('Exception when calling AIPromptApi->aIPromptControllerTestFunction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aIPromptControllerTestFunctionRequest** | [**AIPromptControllerTestFunctionRequest**](AIPromptControllerTestFunctionRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createManyBaseAIPromptControllerAIPromptEntity**
> BuiltList<JsonObject> createManyBaseAIPromptControllerAIPromptEntity(createManyAIPromptEntityDto)

Create many AIPromptEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAIPromptApi();
final CreateManyAIPromptEntityDto createManyAIPromptEntityDto = ; // CreateManyAIPromptEntityDto | 

try {
    final response = api.createManyBaseAIPromptControllerAIPromptEntity(createManyAIPromptEntityDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AIPromptApi->createManyBaseAIPromptControllerAIPromptEntity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createManyAIPromptEntityDto** | [**CreateManyAIPromptEntityDto**](CreateManyAIPromptEntityDto.md)|  | 

### Return type

[**BuiltList&lt;JsonObject&gt;**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOneBaseAIPromptControllerAIPromptEntity**
> JsonObject createOneBaseAIPromptControllerAIPromptEntity(body)

Create one AIPromptEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAIPromptApi();
final JsonObject body = Object; // JsonObject | 

try {
    final response = api.createOneBaseAIPromptControllerAIPromptEntity(body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AIPromptApi->createOneBaseAIPromptControllerAIPromptEntity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **JsonObject**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOneBaseAIPromptControllerAIPromptEntity**
> deleteOneBaseAIPromptControllerAIPromptEntity(id)

Delete one AIPromptEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAIPromptApi();
final num id = 8.14; // num | 

try {
    api.deleteOneBaseAIPromptControllerAIPromptEntity(id);
} catch on DioException (e) {
    print('Exception when calling AIPromptApi->deleteOneBaseAIPromptControllerAIPromptEntity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getManyBaseAIPromptControllerAIPromptEntity**
> GetManyAIPromptEntityResponseDto getManyBaseAIPromptControllerAIPromptEntity(fields, s, filter, or, sort, join, limit, offset, page, cache)

Retrieve many AIPromptEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAIPromptApi();
final BuiltList<String> fields = ; // BuiltList<String> | Selects resource fields. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#select\" target=\"_blank\">Docs</a>
final String s = s_example; // String | Adds search condition. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#search\" target=\"_blank\">Docs</a>
final BuiltList<String> filter = ; // BuiltList<String> | Adds filter condition. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#filter\" target=\"_blank\">Docs</a>
final BuiltList<String> or = ; // BuiltList<String> | Adds OR condition. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#or\" target=\"_blank\">Docs</a>
final BuiltList<String> sort = ; // BuiltList<String> | Adds sort by field. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#sort\" target=\"_blank\">Docs</a>
final BuiltList<String> join = ; // BuiltList<String> | Adds relational resources. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#join\" target=\"_blank\">Docs</a>
final int limit = 56; // int | Limit amount of resources. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#limit\" target=\"_blank\">Docs</a>
final int offset = 56; // int | Offset amount of resources. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#offset\" target=\"_blank\">Docs</a>
final int page = 56; // int | Page portion of resources. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#page\" target=\"_blank\">Docs</a>
final int cache = 56; // int | Reset cache (if was enabled). <a href=\"https://github.com/nestjsx/crud/wiki/Requests#cache\" target=\"_blank\">Docs</a>

try {
    final response = api.getManyBaseAIPromptControllerAIPromptEntity(fields, s, filter, or, sort, join, limit, offset, page, cache);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AIPromptApi->getManyBaseAIPromptControllerAIPromptEntity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fields** | [**BuiltList&lt;String&gt;**](String.md)| Selects resource fields. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#select\" target=\"_blank\">Docs</a> | [optional] 
 **s** | **String**| Adds search condition. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#search\" target=\"_blank\">Docs</a> | [optional] 
 **filter** | [**BuiltList&lt;String&gt;**](String.md)| Adds filter condition. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#filter\" target=\"_blank\">Docs</a> | [optional] 
 **or** | [**BuiltList&lt;String&gt;**](String.md)| Adds OR condition. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#or\" target=\"_blank\">Docs</a> | [optional] 
 **sort** | [**BuiltList&lt;String&gt;**](String.md)| Adds sort by field. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#sort\" target=\"_blank\">Docs</a> | [optional] 
 **join** | [**BuiltList&lt;String&gt;**](String.md)| Adds relational resources. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#join\" target=\"_blank\">Docs</a> | [optional] 
 **limit** | **int**| Limit amount of resources. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#limit\" target=\"_blank\">Docs</a> | [optional] 
 **offset** | **int**| Offset amount of resources. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#offset\" target=\"_blank\">Docs</a> | [optional] 
 **page** | **int**| Page portion of resources. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#page\" target=\"_blank\">Docs</a> | [optional] 
 **cache** | **int**| Reset cache (if was enabled). <a href=\"https://github.com/nestjsx/crud/wiki/Requests#cache\" target=\"_blank\">Docs</a> | [optional] 

### Return type

[**GetManyAIPromptEntityResponseDto**](GetManyAIPromptEntityResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOneBaseAIPromptControllerAIPromptEntity**
> JsonObject getOneBaseAIPromptControllerAIPromptEntity(id, fields, join, cache)

Retrieve one AIPromptEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAIPromptApi();
final num id = 8.14; // num | 
final BuiltList<String> fields = ; // BuiltList<String> | Selects resource fields. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#select\" target=\"_blank\">Docs</a>
final BuiltList<String> join = ; // BuiltList<String> | Adds relational resources. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#join\" target=\"_blank\">Docs</a>
final int cache = 56; // int | Reset cache (if was enabled). <a href=\"https://github.com/nestjsx/crud/wiki/Requests#cache\" target=\"_blank\">Docs</a>

try {
    final response = api.getOneBaseAIPromptControllerAIPromptEntity(id, fields, join, cache);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AIPromptApi->getOneBaseAIPromptControllerAIPromptEntity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**|  | 
 **fields** | [**BuiltList&lt;String&gt;**](String.md)| Selects resource fields. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#select\" target=\"_blank\">Docs</a> | [optional] 
 **join** | [**BuiltList&lt;String&gt;**](String.md)| Adds relational resources. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#join\" target=\"_blank\">Docs</a> | [optional] 
 **cache** | **int**| Reset cache (if was enabled). <a href=\"https://github.com/nestjsx/crud/wiki/Requests#cache\" target=\"_blank\">Docs</a> | [optional] 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replaceOneBaseAIPromptControllerAIPromptEntity**
> JsonObject replaceOneBaseAIPromptControllerAIPromptEntity(id, body)

Replace one AIPromptEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAIPromptApi();
final num id = 8.14; // num | 
final JsonObject body = Object; // JsonObject | 

try {
    final response = api.replaceOneBaseAIPromptControllerAIPromptEntity(id, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AIPromptApi->replaceOneBaseAIPromptControllerAIPromptEntity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**|  | 
 **body** | **JsonObject**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOneBaseAIPromptControllerAIPromptEntity**
> JsonObject updateOneBaseAIPromptControllerAIPromptEntity(id, body)

Update one AIPromptEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAIPromptApi();
final num id = 8.14; // num | 
final JsonObject body = Object; // JsonObject | 

try {
    final response = api.updateOneBaseAIPromptControllerAIPromptEntity(id, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AIPromptApi->updateOneBaseAIPromptControllerAIPromptEntity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**|  | 
 **body** | **JsonObject**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

