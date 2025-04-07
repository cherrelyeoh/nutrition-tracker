# openapi.api.AIIntegrationLogsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aIIntegrationLogsController**](AIIntegrationLogsApi.md#aiintegrationlogscontroller) | **GET** /rest/AIIntegrationLogs/metadata | 
[**createManyBaseAIIntegrationLogsControllerAIIntegrationLogsEntity**](AIIntegrationLogsApi.md#createmanybaseaiintegrationlogscontrolleraiintegrationlogsentity) | **POST** /rest/AIIntegrationLogs/bulk | Create many AIIntegrationLogsEntity
[**createOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity**](AIIntegrationLogsApi.md#createonebaseaiintegrationlogscontrolleraiintegrationlogsentity) | **POST** /rest/AIIntegrationLogs | Create one AIIntegrationLogsEntity
[**deleteOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity**](AIIntegrationLogsApi.md#deleteonebaseaiintegrationlogscontrolleraiintegrationlogsentity) | **DELETE** /rest/AIIntegrationLogs/{id} | Delete one AIIntegrationLogsEntity
[**getManyBaseAIIntegrationLogsControllerAIIntegrationLogsEntity**](AIIntegrationLogsApi.md#getmanybaseaiintegrationlogscontrolleraiintegrationlogsentity) | **GET** /rest/AIIntegrationLogs | Retrieve many AIIntegrationLogsEntity
[**getOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity**](AIIntegrationLogsApi.md#getonebaseaiintegrationlogscontrolleraiintegrationlogsentity) | **GET** /rest/AIIntegrationLogs/{id} | Retrieve one AIIntegrationLogsEntity
[**replaceOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity**](AIIntegrationLogsApi.md#replaceonebaseaiintegrationlogscontrolleraiintegrationlogsentity) | **PUT** /rest/AIIntegrationLogs/{id} | Replace one AIIntegrationLogsEntity
[**updateOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity**](AIIntegrationLogsApi.md#updateonebaseaiintegrationlogscontrolleraiintegrationlogsentity) | **PATCH** /rest/AIIntegrationLogs/{id} | Update one AIIntegrationLogsEntity


# **aIIntegrationLogsController**
> aIIntegrationLogsController()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAIIntegrationLogsApi();

try {
    api.aIIntegrationLogsController();
} catch on DioException (e) {
    print('Exception when calling AIIntegrationLogsApi->aIIntegrationLogsController: $e\n');
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

# **createManyBaseAIIntegrationLogsControllerAIIntegrationLogsEntity**
> BuiltList<JsonObject> createManyBaseAIIntegrationLogsControllerAIIntegrationLogsEntity(createManyAIIntegrationLogsEntityDto)

Create many AIIntegrationLogsEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAIIntegrationLogsApi();
final CreateManyAIIntegrationLogsEntityDto createManyAIIntegrationLogsEntityDto = ; // CreateManyAIIntegrationLogsEntityDto | 

try {
    final response = api.createManyBaseAIIntegrationLogsControllerAIIntegrationLogsEntity(createManyAIIntegrationLogsEntityDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AIIntegrationLogsApi->createManyBaseAIIntegrationLogsControllerAIIntegrationLogsEntity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createManyAIIntegrationLogsEntityDto** | [**CreateManyAIIntegrationLogsEntityDto**](CreateManyAIIntegrationLogsEntityDto.md)|  | 

### Return type

[**BuiltList&lt;JsonObject&gt;**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity**
> JsonObject createOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity(body)

Create one AIIntegrationLogsEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAIIntegrationLogsApi();
final JsonObject body = Object; // JsonObject | 

try {
    final response = api.createOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity(body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AIIntegrationLogsApi->createOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity: $e\n');
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

# **deleteOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity**
> deleteOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity(id)

Delete one AIIntegrationLogsEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAIIntegrationLogsApi();
final num id = 8.14; // num | 

try {
    api.deleteOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity(id);
} catch on DioException (e) {
    print('Exception when calling AIIntegrationLogsApi->deleteOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity: $e\n');
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

# **getManyBaseAIIntegrationLogsControllerAIIntegrationLogsEntity**
> GetManyAIIntegrationLogsEntityResponseDto getManyBaseAIIntegrationLogsControllerAIIntegrationLogsEntity(fields, s, filter, or, sort, join, limit, offset, page, cache)

Retrieve many AIIntegrationLogsEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAIIntegrationLogsApi();
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
    final response = api.getManyBaseAIIntegrationLogsControllerAIIntegrationLogsEntity(fields, s, filter, or, sort, join, limit, offset, page, cache);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AIIntegrationLogsApi->getManyBaseAIIntegrationLogsControllerAIIntegrationLogsEntity: $e\n');
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

[**GetManyAIIntegrationLogsEntityResponseDto**](GetManyAIIntegrationLogsEntityResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity**
> JsonObject getOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity(id, fields, join, cache)

Retrieve one AIIntegrationLogsEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAIIntegrationLogsApi();
final num id = 8.14; // num | 
final BuiltList<String> fields = ; // BuiltList<String> | Selects resource fields. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#select\" target=\"_blank\">Docs</a>
final BuiltList<String> join = ; // BuiltList<String> | Adds relational resources. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#join\" target=\"_blank\">Docs</a>
final int cache = 56; // int | Reset cache (if was enabled). <a href=\"https://github.com/nestjsx/crud/wiki/Requests#cache\" target=\"_blank\">Docs</a>

try {
    final response = api.getOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity(id, fields, join, cache);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AIIntegrationLogsApi->getOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity: $e\n');
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

# **replaceOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity**
> JsonObject replaceOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity(id, body)

Replace one AIIntegrationLogsEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAIIntegrationLogsApi();
final num id = 8.14; // num | 
final JsonObject body = Object; // JsonObject | 

try {
    final response = api.replaceOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity(id, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AIIntegrationLogsApi->replaceOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity: $e\n');
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

# **updateOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity**
> JsonObject updateOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity(id, body)

Update one AIIntegrationLogsEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAIIntegrationLogsApi();
final num id = 8.14; // num | 
final JsonObject body = Object; // JsonObject | 

try {
    final response = api.updateOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity(id, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AIIntegrationLogsApi->updateOneBaseAIIntegrationLogsControllerAIIntegrationLogsEntity: $e\n');
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

