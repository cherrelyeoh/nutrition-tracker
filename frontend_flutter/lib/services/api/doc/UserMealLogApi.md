# openapi.api.UserMealLogApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createManyBaseUserMealLogControllerUserMealLogEntity**](UserMealLogApi.md#createmanybaseusermeallogcontrollerusermeallogentity) | **POST** /rest/UserMealLog/bulk | Create many UserMealLogEntity
[**createOneBaseUserMealLogControllerUserMealLogEntity**](UserMealLogApi.md#createonebaseusermeallogcontrollerusermeallogentity) | **POST** /rest/UserMealLog | Create one UserMealLogEntity
[**deleteOneBaseUserMealLogControllerUserMealLogEntity**](UserMealLogApi.md#deleteonebaseusermeallogcontrollerusermeallogentity) | **DELETE** /rest/UserMealLog/{id} | Delete one UserMealLogEntity
[**getManyBaseUserMealLogControllerUserMealLogEntity**](UserMealLogApi.md#getmanybaseusermeallogcontrollerusermeallogentity) | **GET** /rest/UserMealLog | Retrieve many UserMealLogEntity
[**getOneBaseUserMealLogControllerUserMealLogEntity**](UserMealLogApi.md#getonebaseusermeallogcontrollerusermeallogentity) | **GET** /rest/UserMealLog/{id} | Retrieve one UserMealLogEntity
[**replaceOneBaseUserMealLogControllerUserMealLogEntity**](UserMealLogApi.md#replaceonebaseusermeallogcontrollerusermeallogentity) | **PUT** /rest/UserMealLog/{id} | Replace one UserMealLogEntity
[**updateOneBaseUserMealLogControllerUserMealLogEntity**](UserMealLogApi.md#updateonebaseusermeallogcontrollerusermeallogentity) | **PATCH** /rest/UserMealLog/{id} | Update one UserMealLogEntity
[**userMealLogController**](UserMealLogApi.md#usermeallogcontroller) | **GET** /rest/UserMealLog/metadata | 
[**userMealLogControllerExtractNutrientDetails**](UserMealLogApi.md#usermeallogcontrollerextractnutrientdetails) | **POST** /rest/UserMealLog/extractNutrientDetails | 


# **createManyBaseUserMealLogControllerUserMealLogEntity**
> BuiltList<JsonObject> createManyBaseUserMealLogControllerUserMealLogEntity(createManyUserMealLogEntityDto)

Create many UserMealLogEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserMealLogApi();
final CreateManyUserMealLogEntityDto createManyUserMealLogEntityDto = ; // CreateManyUserMealLogEntityDto | 

try {
    final response = api.createManyBaseUserMealLogControllerUserMealLogEntity(createManyUserMealLogEntityDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserMealLogApi->createManyBaseUserMealLogControllerUserMealLogEntity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createManyUserMealLogEntityDto** | [**CreateManyUserMealLogEntityDto**](CreateManyUserMealLogEntityDto.md)|  | 

### Return type

[**BuiltList&lt;JsonObject&gt;**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOneBaseUserMealLogControllerUserMealLogEntity**
> JsonObject createOneBaseUserMealLogControllerUserMealLogEntity(body)

Create one UserMealLogEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserMealLogApi();
final JsonObject body = Object; // JsonObject | 

try {
    final response = api.createOneBaseUserMealLogControllerUserMealLogEntity(body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserMealLogApi->createOneBaseUserMealLogControllerUserMealLogEntity: $e\n');
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

# **deleteOneBaseUserMealLogControllerUserMealLogEntity**
> deleteOneBaseUserMealLogControllerUserMealLogEntity(id)

Delete one UserMealLogEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserMealLogApi();
final num id = 8.14; // num | 

try {
    api.deleteOneBaseUserMealLogControllerUserMealLogEntity(id);
} catch on DioException (e) {
    print('Exception when calling UserMealLogApi->deleteOneBaseUserMealLogControllerUserMealLogEntity: $e\n');
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

# **getManyBaseUserMealLogControllerUserMealLogEntity**
> GetManyUserMealLogEntityResponseDto getManyBaseUserMealLogControllerUserMealLogEntity(fields, s, filter, or, sort, join, limit, offset, page, cache)

Retrieve many UserMealLogEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserMealLogApi();
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
    final response = api.getManyBaseUserMealLogControllerUserMealLogEntity(fields, s, filter, or, sort, join, limit, offset, page, cache);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserMealLogApi->getManyBaseUserMealLogControllerUserMealLogEntity: $e\n');
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

[**GetManyUserMealLogEntityResponseDto**](GetManyUserMealLogEntityResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOneBaseUserMealLogControllerUserMealLogEntity**
> JsonObject getOneBaseUserMealLogControllerUserMealLogEntity(id, fields, join, cache)

Retrieve one UserMealLogEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserMealLogApi();
final num id = 8.14; // num | 
final BuiltList<String> fields = ; // BuiltList<String> | Selects resource fields. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#select\" target=\"_blank\">Docs</a>
final BuiltList<String> join = ; // BuiltList<String> | Adds relational resources. <a href=\"https://github.com/nestjsx/crud/wiki/Requests#join\" target=\"_blank\">Docs</a>
final int cache = 56; // int | Reset cache (if was enabled). <a href=\"https://github.com/nestjsx/crud/wiki/Requests#cache\" target=\"_blank\">Docs</a>

try {
    final response = api.getOneBaseUserMealLogControllerUserMealLogEntity(id, fields, join, cache);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserMealLogApi->getOneBaseUserMealLogControllerUserMealLogEntity: $e\n');
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

# **replaceOneBaseUserMealLogControllerUserMealLogEntity**
> JsonObject replaceOneBaseUserMealLogControllerUserMealLogEntity(id, body)

Replace one UserMealLogEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserMealLogApi();
final num id = 8.14; // num | 
final JsonObject body = Object; // JsonObject | 

try {
    final response = api.replaceOneBaseUserMealLogControllerUserMealLogEntity(id, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserMealLogApi->replaceOneBaseUserMealLogControllerUserMealLogEntity: $e\n');
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

# **updateOneBaseUserMealLogControllerUserMealLogEntity**
> JsonObject updateOneBaseUserMealLogControllerUserMealLogEntity(id, body)

Update one UserMealLogEntity

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserMealLogApi();
final num id = 8.14; // num | 
final JsonObject body = Object; // JsonObject | 

try {
    final response = api.updateOneBaseUserMealLogControllerUserMealLogEntity(id, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserMealLogApi->updateOneBaseUserMealLogControllerUserMealLogEntity: $e\n');
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

# **userMealLogController**
> userMealLogController()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserMealLogApi();

try {
    api.userMealLogController();
} catch on DioException (e) {
    print('Exception when calling UserMealLogApi->userMealLogController: $e\n');
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

# **userMealLogControllerExtractNutrientDetails**
> UserMealLogControllerExtractNutrientDetails200Response userMealLogControllerExtractNutrientDetails(userMealLogControllerExtractNutrientDetailsRequest)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserMealLogApi();
final UserMealLogControllerExtractNutrientDetailsRequest userMealLogControllerExtractNutrientDetailsRequest = ; // UserMealLogControllerExtractNutrientDetailsRequest | 

try {
    final response = api.userMealLogControllerExtractNutrientDetails(userMealLogControllerExtractNutrientDetailsRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserMealLogApi->userMealLogControllerExtractNutrientDetails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userMealLogControllerExtractNutrientDetailsRequest** | [**UserMealLogControllerExtractNutrientDetailsRequest**](UserMealLogControllerExtractNutrientDetailsRequest.md)|  | 

### Return type

[**UserMealLogControllerExtractNutrientDetails200Response**](UserMealLogControllerExtractNutrientDetails200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

