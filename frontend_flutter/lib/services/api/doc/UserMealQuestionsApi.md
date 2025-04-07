# openapi.api.UserMealQuestionsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createManyBaseUserMealQuestionsControllerUserMealQuestionsEntity**](UserMealQuestionsApi.md#createmanybaseusermealquestionscontrollerusermealquestionsentity) | **POST** /rest/UserMealQuestions/bulk | Create many UserMealQuestionsEntity
[**createOneBaseUserMealQuestionsControllerUserMealQuestionsEntity**](UserMealQuestionsApi.md#createonebaseusermealquestionscontrollerusermealquestionsentity) | **POST** /rest/UserMealQuestions | Create one UserMealQuestionsEntity
[**deleteOneBaseUserMealQuestionsControllerUserMealQuestionsEntity**](UserMealQuestionsApi.md#deleteonebaseusermealquestionscontrollerusermealquestionsentity) | **DELETE** /rest/UserMealQuestions/{id} | Delete one UserMealQuestionsEntity
[**getManyBaseUserMealQuestionsControllerUserMealQuestionsEntity**](UserMealQuestionsApi.md#getmanybaseusermealquestionscontrollerusermealquestionsentity) | **GET** /rest/UserMealQuestions | Retrieve many UserMealQuestionsEntity
[**getOneBaseUserMealQuestionsControllerUserMealQuestionsEntity**](UserMealQuestionsApi.md#getonebaseusermealquestionscontrollerusermealquestionsentity) | **GET** /rest/UserMealQuestions/{id} | Retrieve one UserMealQuestionsEntity
[**replaceOneBaseUserMealQuestionsControllerUserMealQuestionsEntity**](UserMealQuestionsApi.md#replaceonebaseusermealquestionscontrollerusermealquestionsentity) | **PUT** /rest/UserMealQuestions/{id} | Replace one UserMealQuestionsEntity
[**updateOneBaseUserMealQuestionsControllerUserMealQuestionsEntity**](UserMealQuestionsApi.md#updateonebaseusermealquestionscontrollerusermealquestionsentity) | **PATCH** /rest/UserMealQuestions/{id} | Update one UserMealQuestionsEntity
[**userMealQuestionsController**](UserMealQuestionsApi.md#usermealquestionscontroller) | **GET** /rest/UserMealQuestions/metadata | 


# **createManyBaseUserMealQuestionsControllerUserMealQuestionsEntity**
> BuiltList<JsonObject> createManyBaseUserMealQuestionsControllerUserMealQuestionsEntity(createManyUserMealQuestionsEntityDto)

Create many UserMealQuestionsEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserMealQuestionsApi();
final CreateManyUserMealQuestionsEntityDto createManyUserMealQuestionsEntityDto = ; // CreateManyUserMealQuestionsEntityDto | 

try {
    final response = api.createManyBaseUserMealQuestionsControllerUserMealQuestionsEntity(createManyUserMealQuestionsEntityDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserMealQuestionsApi->createManyBaseUserMealQuestionsControllerUserMealQuestionsEntity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createManyUserMealQuestionsEntityDto** | [**CreateManyUserMealQuestionsEntityDto**](CreateManyUserMealQuestionsEntityDto.md)|  | 

### Return type

[**BuiltList&lt;JsonObject&gt;**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOneBaseUserMealQuestionsControllerUserMealQuestionsEntity**
> JsonObject createOneBaseUserMealQuestionsControllerUserMealQuestionsEntity(body)

Create one UserMealQuestionsEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserMealQuestionsApi();
final JsonObject body = Object; // JsonObject | 

try {
    final response = api.createOneBaseUserMealQuestionsControllerUserMealQuestionsEntity(body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserMealQuestionsApi->createOneBaseUserMealQuestionsControllerUserMealQuestionsEntity: $e\n');
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

# **deleteOneBaseUserMealQuestionsControllerUserMealQuestionsEntity**
> deleteOneBaseUserMealQuestionsControllerUserMealQuestionsEntity(id)

Delete one UserMealQuestionsEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserMealQuestionsApi();
final num id = 8.14; // num | 

try {
    api.deleteOneBaseUserMealQuestionsControllerUserMealQuestionsEntity(id);
} catch on DioException (e) {
    print('Exception when calling UserMealQuestionsApi->deleteOneBaseUserMealQuestionsControllerUserMealQuestionsEntity: $e\n');
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

# **getManyBaseUserMealQuestionsControllerUserMealQuestionsEntity**
> GetManyUserMealQuestionsEntityResponseDto getManyBaseUserMealQuestionsControllerUserMealQuestionsEntity(fields, s, filter, or, sort, join, limit, offset, page, cache)

Retrieve many UserMealQuestionsEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserMealQuestionsApi();
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
    final response = api.getManyBaseUserMealQuestionsControllerUserMealQuestionsEntity(fields, s, filter, or, sort, join, limit, offset, page, cache);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserMealQuestionsApi->getManyBaseUserMealQuestionsControllerUserMealQuestionsEntity: $e\n');
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

[**GetManyUserMealQuestionsEntityResponseDto**](GetManyUserMealQuestionsEntityResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOneBaseUserMealQuestionsControllerUserMealQuestionsEntity**
> JsonObject getOneBaseUserMealQuestionsControllerUserMealQuestionsEntity(id, fields, join, cache)

Retrieve one UserMealQuestionsEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserMealQuestionsApi();
final num id = 8.14; // num | 
final BuiltList<String> fields = ; // BuiltList<String> | Selects resource fields. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#select\" target=\"_blank\">Docs</a>
final BuiltList<String> join = ; // BuiltList<String> | Adds relational resources. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#join\" target=\"_blank\">Docs</a>
final int cache = 56; // int | Reset cache (if was enabled). <a href=\"https://github.com/nestjsx/crud/wiki/Requests#cache\" target=\"_blank\">Docs</a>

try {
    final response = api.getOneBaseUserMealQuestionsControllerUserMealQuestionsEntity(id, fields, join, cache);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserMealQuestionsApi->getOneBaseUserMealQuestionsControllerUserMealQuestionsEntity: $e\n');
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

# **replaceOneBaseUserMealQuestionsControllerUserMealQuestionsEntity**
> JsonObject replaceOneBaseUserMealQuestionsControllerUserMealQuestionsEntity(id, body)

Replace one UserMealQuestionsEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserMealQuestionsApi();
final num id = 8.14; // num | 
final JsonObject body = Object; // JsonObject | 

try {
    final response = api.replaceOneBaseUserMealQuestionsControllerUserMealQuestionsEntity(id, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserMealQuestionsApi->replaceOneBaseUserMealQuestionsControllerUserMealQuestionsEntity: $e\n');
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

# **updateOneBaseUserMealQuestionsControllerUserMealQuestionsEntity**
> JsonObject updateOneBaseUserMealQuestionsControllerUserMealQuestionsEntity(id, body)

Update one UserMealQuestionsEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserMealQuestionsApi();
final num id = 8.14; // num | 
final JsonObject body = Object; // JsonObject | 

try {
    final response = api.updateOneBaseUserMealQuestionsControllerUserMealQuestionsEntity(id, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserMealQuestionsApi->updateOneBaseUserMealQuestionsControllerUserMealQuestionsEntity: $e\n');
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

# **userMealQuestionsController**
> userMealQuestionsController()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserMealQuestionsApi();

try {
    api.userMealQuestionsController();
} catch on DioException (e) {
    print('Exception when calling UserMealQuestionsApi->userMealQuestionsController: $e\n');
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

