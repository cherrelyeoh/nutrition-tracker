# openapi.api.UserApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createManyBaseUserControllerUserEntity**](UserApi.md#createmanybaseusercontrolleruserentity) | **POST** /rest/User/bulk | Create many UserEntity
[**createOneBaseUserControllerUserEntity**](UserApi.md#createonebaseusercontrolleruserentity) | **POST** /rest/User | Create one UserEntity
[**deleteOneBaseUserControllerUserEntity**](UserApi.md#deleteonebaseusercontrolleruserentity) | **DELETE** /rest/User/{id} | Delete one UserEntity
[**getManyBaseUserControllerUserEntity**](UserApi.md#getmanybaseusercontrolleruserentity) | **GET** /rest/User | Retrieve many UserEntity
[**getOneBaseUserControllerUserEntity**](UserApi.md#getonebaseusercontrolleruserentity) | **GET** /rest/User/{id} | Retrieve one UserEntity
[**replaceOneBaseUserControllerUserEntity**](UserApi.md#replaceonebaseusercontrolleruserentity) | **PUT** /rest/User/{id} | Replace one UserEntity
[**updateOneBaseUserControllerUserEntity**](UserApi.md#updateonebaseusercontrolleruserentity) | **PATCH** /rest/User/{id} | Update one UserEntity
[**userController**](UserApi.md#usercontroller) | **GET** /rest/User/metadata | 


# **createManyBaseUserControllerUserEntity**
> BuiltList<JsonObject> createManyBaseUserControllerUserEntity(createManyUserEntityDto)

Create many UserEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final CreateManyUserEntityDto createManyUserEntityDto = ; // CreateManyUserEntityDto | 

try {
    final response = api.createManyBaseUserControllerUserEntity(createManyUserEntityDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->createManyBaseUserControllerUserEntity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createManyUserEntityDto** | [**CreateManyUserEntityDto**](CreateManyUserEntityDto.md)|  | 

### Return type

[**BuiltList&lt;JsonObject&gt;**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOneBaseUserControllerUserEntity**
> JsonObject createOneBaseUserControllerUserEntity(body)

Create one UserEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final JsonObject body = Object; // JsonObject | 

try {
    final response = api.createOneBaseUserControllerUserEntity(body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->createOneBaseUserControllerUserEntity: $e\n');
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

# **deleteOneBaseUserControllerUserEntity**
> deleteOneBaseUserControllerUserEntity(id)

Delete one UserEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final num id = 8.14; // num | 

try {
    api.deleteOneBaseUserControllerUserEntity(id);
} catch on DioException (e) {
    print('Exception when calling UserApi->deleteOneBaseUserControllerUserEntity: $e\n');
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

# **getManyBaseUserControllerUserEntity**
> GetManyUserEntityResponseDto getManyBaseUserControllerUserEntity(fields, s, filter, or, sort, join, limit, offset, page, cache)

Retrieve many UserEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
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
    final response = api.getManyBaseUserControllerUserEntity(fields, s, filter, or, sort, join, limit, offset, page, cache);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->getManyBaseUserControllerUserEntity: $e\n');
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

[**GetManyUserEntityResponseDto**](GetManyUserEntityResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOneBaseUserControllerUserEntity**
> JsonObject getOneBaseUserControllerUserEntity(id, fields, join, cache)

Retrieve one UserEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final num id = 8.14; // num | 
final BuiltList<String> fields = ; // BuiltList<String> | Selects resource fields. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#select\" target=\"_blank\">Docs</a>
final BuiltList<String> join = ; // BuiltList<String> | Adds relational resources. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#join\" target=\"_blank\">Docs</a>
final int cache = 56; // int | Reset cache (if was enabled). <a href=\"https://github.com/nestjsx/crud/wiki/Requests#cache\" target=\"_blank\">Docs</a>

try {
    final response = api.getOneBaseUserControllerUserEntity(id, fields, join, cache);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->getOneBaseUserControllerUserEntity: $e\n');
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

# **replaceOneBaseUserControllerUserEntity**
> JsonObject replaceOneBaseUserControllerUserEntity(id, body)

Replace one UserEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final num id = 8.14; // num | 
final JsonObject body = Object; // JsonObject | 

try {
    final response = api.replaceOneBaseUserControllerUserEntity(id, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->replaceOneBaseUserControllerUserEntity: $e\n');
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

# **updateOneBaseUserControllerUserEntity**
> JsonObject updateOneBaseUserControllerUserEntity(id, body)

Update one UserEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final num id = 8.14; // num | 
final JsonObject body = Object; // JsonObject | 

try {
    final response = api.updateOneBaseUserControllerUserEntity(id, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->updateOneBaseUserControllerUserEntity: $e\n');
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

# **userController**
> userController()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();

try {
    api.userController();
} catch on DioException (e) {
    print('Exception when calling UserApi->userController: $e\n');
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

