// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_const_constructors

part of 'bigbum.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetManyAIPromptEntityResponseDto _$GetManyAIPromptEntityResponseDtoFromJson(
        Map<String, dynamic> json) =>
    GetManyAIPromptEntityResponseDto(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => AIPromptEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: (json['count'] as num).toDouble(),
      total: (json['total'] as num).toDouble(),
      page: (json['page'] as num).toDouble(),
      pageCount: (json['pageCount'] as num).toDouble(),
    );

Map<String, dynamic> _$GetManyAIPromptEntityResponseDtoToJson(
        GetManyAIPromptEntityResponseDto instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'total': instance.total,
      'page': instance.page,
      'pageCount': instance.pageCount,
    };

AIPromptEntity _$AIPromptEntityFromJson(Map<String, dynamic> json) =>
    AIPromptEntity(
      id: (json['id'] as num).toDouble(),
      promptName: json['promptName'] as String,
      promptRequest: json['promptRequest'] as String,
      createdBy: json['createdBy'] as String,
      creationDate: DateTime.parse(json['creationDate'] as String),
      lastUpdatedDate: DateTime.parse(json['lastUpdatedDate'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$AIPromptEntityToJson(AIPromptEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'promptName': instance.promptName,
      'promptRequest': instance.promptRequest,
      'createdBy': instance.createdBy,
      'creationDate': instance.creationDate.toIso8601String(),
      'lastUpdatedDate': instance.lastUpdatedDate.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };

CreateManyAIPromptEntityDto _$CreateManyAIPromptEntityDtoFromJson(
        Map<String, dynamic> json) =>
    CreateManyAIPromptEntityDto(
      bulk: (json['bulk'] as List<dynamic>?)
              ?.map((e) => AIPromptEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CreateManyAIPromptEntityDtoToJson(
        CreateManyAIPromptEntityDto instance) =>
    <String, dynamic>{
      'bulk': instance.bulk.map((e) => e.toJson()).toList(),
    };

UserMealInputDto _$UserMealInputDtoFromJson(Map<String, dynamic> json) =>
    UserMealInputDto(
      userId: (json['userId'] as num).toDouble(),
      userMealId: (json['userMealId'] as num?)?.toDouble(),
      mealImage: json['mealImage'] as String?,
      mealName: json['mealName'] as String,
      dateOfMeal: DateTime.parse(json['dateOfMeal'] as String),
    );

Map<String, dynamic> _$UserMealInputDtoToJson(UserMealInputDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userMealId': instance.userMealId,
      'mealImage': instance.mealImage,
      'mealName': instance.mealName,
      'dateOfMeal': instance.dateOfMeal.toIso8601String(),
    };

GetManyUserMealLogEntityResponseDto
    _$GetManyUserMealLogEntityResponseDtoFromJson(Map<String, dynamic> json) =>
        GetManyUserMealLogEntityResponseDto(
          data: (json['data'] as List<dynamic>?)
                  ?.map((e) =>
                      UserMealLogEntity.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              [],
          count: (json['count'] as num).toDouble(),
          total: (json['total'] as num).toDouble(),
          page: (json['page'] as num).toDouble(),
          pageCount: (json['pageCount'] as num).toDouble(),
        );

Map<String, dynamic> _$GetManyUserMealLogEntityResponseDtoToJson(
        GetManyUserMealLogEntityResponseDto instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'total': instance.total,
      'page': instance.page,
      'pageCount': instance.pageCount,
    };

GetManyAIIntegrationLogsEntityResponseDto
    _$GetManyAIIntegrationLogsEntityResponseDtoFromJson(
            Map<String, dynamic> json) =>
        GetManyAIIntegrationLogsEntityResponseDto(
          data: (json['data'] as List<dynamic>?)
                  ?.map((e) => AIIntegrationLogsEntity.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
          count: (json['count'] as num).toDouble(),
          total: (json['total'] as num).toDouble(),
          page: (json['page'] as num).toDouble(),
          pageCount: (json['pageCount'] as num).toDouble(),
        );

Map<String, dynamic> _$GetManyAIIntegrationLogsEntityResponseDtoToJson(
        GetManyAIIntegrationLogsEntityResponseDto instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'total': instance.total,
      'page': instance.page,
      'pageCount': instance.pageCount,
    };

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) => UserEntity(
      id: (json['id'] as num).toDouble(),
      name: json['name'] as String,
      emailAddress: json['emailAddress'] as String,
      mobileNumber: json['mobileNumber'] as String,
      password: json['password'] as String,
      passwordResetCode: json['passwordResetCode'] as String?,
      accountStatus: (json['accountStatus'] as num).toDouble(),
      createdBy: json['createdBy'] as String,
      lastUpdatedBy: json['lastUpdatedBy'] as String,
      subscriptionId: (json['subscriptionId'] as num?)?.toDouble(),
      creationDate: DateTime.parse(json['creationDate'] as String),
      lastUpdatedDate: DateTime.parse(json['lastUpdatedDate'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$UserEntityToJson(UserEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'emailAddress': instance.emailAddress,
      'mobileNumber': instance.mobileNumber,
      'password': instance.password,
      'passwordResetCode': instance.passwordResetCode,
      'accountStatus': instance.accountStatus,
      'createdBy': instance.createdBy,
      'lastUpdatedBy': instance.lastUpdatedBy,
      'subscriptionId': instance.subscriptionId,
      'creationDate': instance.creationDate.toIso8601String(),
      'lastUpdatedDate': instance.lastUpdatedDate.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };

AIIntegrationLogsEntity _$AIIntegrationLogsEntityFromJson(
        Map<String, dynamic> json) =>
    AIIntegrationLogsEntity(
      id: (json['id'] as num).toDouble(),
      actionUrl: json['actionUrl'] as String,
      request: json['request'] as String,
      response: json['response'] as String,
      responseType: json['responseType'] as String,
      promptType:
          AIPromptEntity.fromJson(json['promptType'] as Map<String, dynamic>),
      requestDuration: (json['requestDuration'] as num).toDouble(),
      promptToken: (json['promptToken'] as num).toDouble(),
      cost: (json['cost'] as num).toDouble(),
      createdBy: json['createdBy'] == null
          ? null
          : UserEntity.fromJson(json['createdBy'] as Map<String, dynamic>),
      createdDate: DateTime.parse(json['createdDate'] as String),
      lastUpdatedDate: DateTime.parse(json['lastUpdatedDate'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$AIIntegrationLogsEntityToJson(
        AIIntegrationLogsEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'actionUrl': instance.actionUrl,
      'request': instance.request,
      'response': instance.response,
      'responseType': instance.responseType,
      'promptType': instance.promptType.toJson(),
      'requestDuration': instance.requestDuration,
      'promptToken': instance.promptToken,
      'cost': instance.cost,
      'createdBy': instance.createdBy?.toJson(),
      'createdDate': instance.createdDate.toIso8601String(),
      'lastUpdatedDate': instance.lastUpdatedDate.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };

UserMealLogEntity _$UserMealLogEntityFromJson(Map<String, dynamic> json) =>
    UserMealLogEntity(
      id: (json['id'] as num?)?.toDouble(),
      mealImage: json['mealImage'] as String?,
      mealType: json['mealType'] as String?,
      isComplete: json['isComplete'] as bool?,
      dateOfMeal: json['dateOfMeal'] == null
          ? null
          : DateTime.parse(json['dateOfMeal'] as String),
      mealName: json['mealName'] as String?,
      weight: (json['weight'] as num?)?.toDouble(),
      calories: (json['calories'] as num?)?.toDouble(),
      protein: (json['protein'] as num?)?.toDouble(),
      fats: (json['fats'] as num?)?.toDouble(),
      carbs: (json['carbs'] as num?)?.toDouble(),
      mealLevel: (json['mealLevel'] as num?)?.toDouble(),
      comments: json['comments'] as String?,
      promptLog: json['promptLog'] == null
          ? null
          : AIIntegrationLogsEntity.fromJson(
              json['promptLog'] as Map<String, dynamic>),
      createdBy: json['createdBy'] == null
          ? null
          : UserEntity.fromJson(json['createdBy'] as Map<String, dynamic>),
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdatedDate: json['lastUpdatedDate'] == null
          ? null
          : DateTime.parse(json['lastUpdatedDate'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$UserMealLogEntityToJson(UserMealLogEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mealImage': instance.mealImage,
      'mealType': instance.mealType,
      'isComplete': instance.isComplete,
      'dateOfMeal': instance.dateOfMeal?.toIso8601String(),
      'mealName': instance.mealName,
      'weight': instance.weight,
      'calories': instance.calories,
      'protein': instance.protein,
      'fats': instance.fats,
      'carbs': instance.carbs,
      'mealLevel': instance.mealLevel,
      'comments': instance.comments,
      'promptLog': instance.promptLog?.toJson(),
      'createdBy': instance.createdBy?.toJson(),
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedDate': instance.lastUpdatedDate?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };

CreateManyUserMealLogEntityDto _$CreateManyUserMealLogEntityDtoFromJson(
        Map<String, dynamic> json) =>
    CreateManyUserMealLogEntityDto(
      bulk: (json['bulk'] as List<dynamic>?)
              ?.map(
                  (e) => UserMealLogEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CreateManyUserMealLogEntityDtoToJson(
        CreateManyUserMealLogEntityDto instance) =>
    <String, dynamic>{
      'bulk': instance.bulk.map((e) => e.toJson()).toList(),
    };

CreateAIIntegrationLogDto _$CreateAIIntegrationLogDtoFromJson(
        Map<String, dynamic> json) =>
    CreateAIIntegrationLogDto(
      actionUrl: json['actionUrl'] as String,
      request: json['request'] as String,
      response: json['response'] as String,
      responseType: json['responseType'] as String,
      requestDuration: (json['requestDuration'] as num?)?.toDouble(),
      promptToken: (json['promptToken'] as num).toDouble(),
      cost: (json['cost'] as num?)?.toDouble(),
      promptTypeId: (json['promptTypeId'] as num?)?.toDouble(),
      createdById: (json['createdById'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CreateAIIntegrationLogDtoToJson(
        CreateAIIntegrationLogDto instance) =>
    <String, dynamic>{
      'actionUrl': instance.actionUrl,
      'request': instance.request,
      'response': instance.response,
      'responseType': instance.responseType,
      'requestDuration': instance.requestDuration,
      'promptToken': instance.promptToken,
      'cost': instance.cost,
      'promptTypeId': instance.promptTypeId,
      'createdById': instance.createdById,
    };

CreateManyAIIntegrationLogsEntityDto
    _$CreateManyAIIntegrationLogsEntityDtoFromJson(Map<String, dynamic> json) =>
        CreateManyAIIntegrationLogsEntityDto(
          bulk: (json['bulk'] as List<dynamic>?)
                  ?.map((e) => CreateAIIntegrationLogDto.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$CreateManyAIIntegrationLogsEntityDtoToJson(
        CreateManyAIIntegrationLogsEntityDto instance) =>
    <String, dynamic>{
      'bulk': instance.bulk.map((e) => e.toJson()).toList(),
    };

UpdateAIIntegrationLogDto _$UpdateAIIntegrationLogDtoFromJson(
        Map<String, dynamic> json) =>
    UpdateAIIntegrationLogDto();

Map<String, dynamic> _$UpdateAIIntegrationLogDtoToJson(
        UpdateAIIntegrationLogDto instance) =>
    <String, dynamic>{};

SignUpDto _$SignUpDtoFromJson(Map<String, dynamic> json) => SignUpDto(
      name: json['name'] as String,
      emailAddress: json['emailAddress'] as String,
      mobileNumber: json['mobileNumber'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$SignUpDtoToJson(SignUpDto instance) => <String, dynamic>{
      'name': instance.name,
      'emailAddress': instance.emailAddress,
      'mobileNumber': instance.mobileNumber,
      'password': instance.password,
    };

GetManyUserEntityResponseDto _$GetManyUserEntityResponseDtoFromJson(
        Map<String, dynamic> json) =>
    GetManyUserEntityResponseDto(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => UserEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: (json['count'] as num).toDouble(),
      total: (json['total'] as num).toDouble(),
      page: (json['page'] as num).toDouble(),
      pageCount: (json['pageCount'] as num).toDouble(),
    );

Map<String, dynamic> _$GetManyUserEntityResponseDtoToJson(
        GetManyUserEntityResponseDto instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'total': instance.total,
      'page': instance.page,
      'pageCount': instance.pageCount,
    };

LoginDto _$LoginDtoFromJson(Map<String, dynamic> json) => LoginDto(
      emailAddress: json['emailAddress'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginDtoToJson(LoginDto instance) => <String, dynamic>{
      'emailAddress': instance.emailAddress,
      'password': instance.password,
    };

UserSessionDto _$UserSessionDtoFromJson(Map<String, dynamic> json) =>
    UserSessionDto(
      id: json['id'] as Object,
      name: json['name'] as String,
      emailAddress: json['emailAddress'] as String,
      mobileNumber: json['mobileNumber'] as String,
      accountStatus: (json['accountStatus'] as num).toDouble(),
      subscriptionId: (json['subscriptionId'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$UserSessionDtoToJson(UserSessionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'emailAddress': instance.emailAddress,
      'mobileNumber': instance.mobileNumber,
      'accountStatus': instance.accountStatus,
      'subscriptionId': instance.subscriptionId,
    };

LoginResponseDto _$LoginResponseDtoFromJson(Map<String, dynamic> json) =>
    LoginResponseDto(
      user: UserSessionDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseDtoToJson(LoginResponseDto instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
    };

TestDto _$TestDtoFromJson(Map<String, dynamic> json) => TestDto(
      bio: json['bio'] as String?,
    );

Map<String, dynamic> _$TestDtoToJson(TestDto instance) => <String, dynamic>{
      'bio': instance.bio,
    };

CreateUserDto _$CreateUserDtoFromJson(Map<String, dynamic> json) =>
    CreateUserDto(
      name: json['name'] as String,
      emailAddress: json['emailAddress'] as String,
      mobileNumber: json['mobileNumber'] as String,
      password: json['password'] as String,
      passwordResetCode: json['passwordResetCode'] as String?,
      accountStatus: (json['accountStatus'] as num).toDouble(),
      createdBy: json['createdBy'] as String,
      lastUpdatedBy: json['lastUpdatedBy'] as String,
      subscriptionId: (json['subscriptionId'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CreateUserDtoToJson(CreateUserDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'emailAddress': instance.emailAddress,
      'mobileNumber': instance.mobileNumber,
      'password': instance.password,
      'passwordResetCode': instance.passwordResetCode,
      'accountStatus': instance.accountStatus,
      'createdBy': instance.createdBy,
      'lastUpdatedBy': instance.lastUpdatedBy,
      'subscriptionId': instance.subscriptionId,
    };

CreateManyUserEntityDto _$CreateManyUserEntityDtoFromJson(
        Map<String, dynamic> json) =>
    CreateManyUserEntityDto(
      bulk: (json['bulk'] as List<dynamic>?)
              ?.map((e) => CreateUserDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CreateManyUserEntityDtoToJson(
        CreateManyUserEntityDto instance) =>
    <String, dynamic>{
      'bulk': instance.bulk.map((e) => e.toJson()).toList(),
    };

UpdateUserDto _$UpdateUserDtoFromJson(Map<String, dynamic> json) =>
    UpdateUserDto();

Map<String, dynamic> _$UpdateUserDtoToJson(UpdateUserDto instance) =>
    <String, dynamic>{};

GetManyUserMealQuestionsEntityResponseDto
    _$GetManyUserMealQuestionsEntityResponseDtoFromJson(
            Map<String, dynamic> json) =>
        GetManyUserMealQuestionsEntityResponseDto(
          data: (json['data'] as List<dynamic>?)
                  ?.map((e) => UserMealQuestionsEntity.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
          count: (json['count'] as num).toDouble(),
          total: (json['total'] as num).toDouble(),
          page: (json['page'] as num).toDouble(),
          pageCount: (json['pageCount'] as num).toDouble(),
        );

Map<String, dynamic> _$GetManyUserMealQuestionsEntityResponseDtoToJson(
        GetManyUserMealQuestionsEntityResponseDto instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'total': instance.total,
      'page': instance.page,
      'pageCount': instance.pageCount,
    };

UserMealQuestionsEntity _$UserMealQuestionsEntityFromJson(
        Map<String, dynamic> json) =>
    UserMealQuestionsEntity(
      id: (json['id'] as num).toDouble(),
      question: json['question'] as String,
      options: (json['options'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      answer: json['answer'] as String,
      userMealLog: UserMealLogEntity.fromJson(
          json['userMealLog'] as Map<String, dynamic>),
      createdDate: DateTime.parse(json['createdDate'] as String),
      lastUpdatedDate: DateTime.parse(json['lastUpdatedDate'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$UserMealQuestionsEntityToJson(
        UserMealQuestionsEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'options': instance.options,
      'answer': instance.answer,
      'userMealLog': instance.userMealLog.toJson(),
      'createdDate': instance.createdDate.toIso8601String(),
      'lastUpdatedDate': instance.lastUpdatedDate.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };

CreateUserMealQuestionDto _$CreateUserMealQuestionDtoFromJson(
        Map<String, dynamic> json) =>
    CreateUserMealQuestionDto(
      question: json['question'] as String,
      options: (json['options'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$CreateUserMealQuestionDtoToJson(
        CreateUserMealQuestionDto instance) =>
    <String, dynamic>{
      'question': instance.question,
      'options': instance.options,
    };

CreateManyUserMealQuestionsEntityDto
    _$CreateManyUserMealQuestionsEntityDtoFromJson(Map<String, dynamic> json) =>
        CreateManyUserMealQuestionsEntityDto(
          bulk: (json['bulk'] as List<dynamic>?)
                  ?.map((e) => CreateUserMealQuestionDto.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$CreateManyUserMealQuestionsEntityDtoToJson(
        CreateManyUserMealQuestionsEntityDto instance) =>
    <String, dynamic>{
      'bulk': instance.bulk.map((e) => e.toJson()).toList(),
    };

UpdateUserMealQuestionDto _$UpdateUserMealQuestionDtoFromJson(
        Map<String, dynamic> json) =>
    UpdateUserMealQuestionDto(
      id: (json['id'] as num).toDouble(),
      question: json['question'] as String?,
      options: (json['options'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$UpdateUserMealQuestionDtoToJson(
        UpdateUserMealQuestionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'options': instance.options,
      'answer': instance.answer,
    };

GetManyUserSubMealLogEntityResponseDto
    _$GetManyUserSubMealLogEntityResponseDtoFromJson(
            Map<String, dynamic> json) =>
        GetManyUserSubMealLogEntityResponseDto(
          data: (json['data'] as List<dynamic>?)
                  ?.map((e) =>
                      UserSubMealLogEntity.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              [],
          count: (json['count'] as num).toDouble(),
          total: (json['total'] as num).toDouble(),
          page: (json['page'] as num).toDouble(),
          pageCount: (json['pageCount'] as num).toDouble(),
        );

Map<String, dynamic> _$GetManyUserSubMealLogEntityResponseDtoToJson(
        GetManyUserSubMealLogEntityResponseDto instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'total': instance.total,
      'page': instance.page,
      'pageCount': instance.pageCount,
    };

UserSubMealLogEntity _$UserSubMealLogEntityFromJson(
        Map<String, dynamic> json) =>
    UserSubMealLogEntity(
      id: (json['id'] as num?)?.toDouble(),
      mealName: json['mealName'] as String?,
      weight: (json['weight'] as num?)?.toDouble(),
      calories: (json['calories'] as num?)?.toDouble(),
      protein: (json['protein'] as num?)?.toDouble(),
      fats: (json['fats'] as num?)?.toDouble(),
      carbs: (json['carbs'] as num?)?.toDouble(),
      mainMeal: json['mainMeal'] == null
          ? null
          : UserMealLogEntity.fromJson(
              json['mainMeal'] as Map<String, dynamic>),
      createdBy: json['createdBy'] == null
          ? null
          : UserEntity.fromJson(json['createdBy'] as Map<String, dynamic>),
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      lastUpdatedDate: json['lastUpdatedDate'] == null
          ? null
          : DateTime.parse(json['lastUpdatedDate'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$UserSubMealLogEntityToJson(
        UserSubMealLogEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mealName': instance.mealName,
      'weight': instance.weight,
      'calories': instance.calories,
      'protein': instance.protein,
      'fats': instance.fats,
      'carbs': instance.carbs,
      'mainMeal': instance.mainMeal?.toJson(),
      'createdBy': instance.createdBy?.toJson(),
      'createdDate': instance.createdDate?.toIso8601String(),
      'lastUpdatedDate': instance.lastUpdatedDate?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };

CreateUserSubMealLogDto _$CreateUserSubMealLogDtoFromJson(
        Map<String, dynamic> json) =>
    CreateUserSubMealLogDto(
      mealName: json['mealName'] as String,
      weight: (json['weight'] as num).toDouble(),
      calories: (json['calories'] as num).toDouble(),
      protein: (json['protein'] as num).toDouble(),
      fats: (json['fats'] as num).toDouble(),
      carbs: (json['carbs'] as num).toDouble(),
      mainMealId: (json['mainMealId'] as num?)?.toDouble(),
      createdById: (json['createdById'] as num).toDouble(),
    );

Map<String, dynamic> _$CreateUserSubMealLogDtoToJson(
        CreateUserSubMealLogDto instance) =>
    <String, dynamic>{
      'mealName': instance.mealName,
      'weight': instance.weight,
      'calories': instance.calories,
      'protein': instance.protein,
      'fats': instance.fats,
      'carbs': instance.carbs,
      'mainMealId': instance.mainMealId,
      'createdById': instance.createdById,
    };

CreateManyUserSubMealLogEntityDto _$CreateManyUserSubMealLogEntityDtoFromJson(
        Map<String, dynamic> json) =>
    CreateManyUserSubMealLogEntityDto(
      bulk: (json['bulk'] as List<dynamic>?)
              ?.map((e) =>
                  CreateUserSubMealLogDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CreateManyUserSubMealLogEntityDtoToJson(
        CreateManyUserSubMealLogEntityDto instance) =>
    <String, dynamic>{
      'bulk': instance.bulk.map((e) => e.toJson()).toList(),
    };

UpdateUserSubMealLogDto _$UpdateUserSubMealLogDtoFromJson(
        Map<String, dynamic> json) =>
    UpdateUserSubMealLogDto();

Map<String, dynamic> _$UpdateUserSubMealLogDtoToJson(
        UpdateUserSubMealLogDto instance) =>
    <String, dynamic>{};

ExtractBiodataInputDto _$ExtractBiodataInputDtoFromJson(
        Map<String, dynamic> json) =>
    ExtractBiodataInputDto(
      userId: (json['userId'] as num).toDouble(),
      bodyImageFront: json['bodyImageFront'] as String?,
      bodyImageSide: json['bodyImageSide'] as String?,
      height: (json['height'] as num).toDouble(),
      weight: (json['weight'] as num).toDouble(),
      age: (json['age'] as num).toDouble(),
      goal: (json['goal'] as num).toDouble(),
      physicalActivity: (json['physicalActivity'] as num).toDouble(),
    );

Map<String, dynamic> _$ExtractBiodataInputDtoToJson(
        ExtractBiodataInputDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'bodyImageFront': instance.bodyImageFront,
      'bodyImageSide': instance.bodyImageSide,
      'height': instance.height,
      'weight': instance.weight,
      'age': instance.age,
      'goal': instance.goal,
      'physicalActivity': instance.physicalActivity,
    };

ExtractBiodataOutputDto _$ExtractBiodataOutputDtoFromJson(
        Map<String, dynamic> json) =>
    ExtractBiodataOutputDto(
      calories: (json['calories'] as num).toDouble(),
      protein: (json['protein'] as num).toDouble(),
      fats: (json['fats'] as num).toDouble(),
      carbs: (json['carbs'] as num).toDouble(),
      mainMacro: json['mainMacro'] as String,
      age: (json['age'] as num).toDouble(),
      weight: (json['weight'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      bmi: (json['bmi'] as num).toDouble(),
      bodyFat: (json['bodyFat'] as num).toDouble(),
      muscleMass: (json['muscleMass'] as num).toDouble(),
      goal: (json['goal'] as num).toDouble(),
      physicalActivity: (json['physicalActivity'] as num).toDouble(),
    );

Map<String, dynamic> _$ExtractBiodataOutputDtoToJson(
        ExtractBiodataOutputDto instance) =>
    <String, dynamic>{
      'calories': instance.calories,
      'protein': instance.protein,
      'fats': instance.fats,
      'carbs': instance.carbs,
      'mainMacro': instance.mainMacro,
      'age': instance.age,
      'weight': instance.weight,
      'height': instance.height,
      'bmi': instance.bmi,
      'bodyFat': instance.bodyFat,
      'muscleMass': instance.muscleMass,
      'goal': instance.goal,
      'physicalActivity': instance.physicalActivity,
    };

GetManyUserBiodataEntityResponseDto
    _$GetManyUserBiodataEntityResponseDtoFromJson(Map<String, dynamic> json) =>
        GetManyUserBiodataEntityResponseDto(
          data: (json['data'] as List<dynamic>?)
                  ?.map((e) =>
                      UserBiodataEntity.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              [],
          count: (json['count'] as num).toDouble(),
          total: (json['total'] as num).toDouble(),
          page: (json['page'] as num).toDouble(),
          pageCount: (json['pageCount'] as num).toDouble(),
        );

Map<String, dynamic> _$GetManyUserBiodataEntityResponseDtoToJson(
        GetManyUserBiodataEntityResponseDto instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'total': instance.total,
      'page': instance.page,
      'pageCount': instance.pageCount,
    };

UserBiodataEntity _$UserBiodataEntityFromJson(Map<String, dynamic> json) =>
    UserBiodataEntity(
      id: (json['id'] as num).toDouble(),
      user: UserEntity.fromJson(json['user'] as Map<String, dynamic>),
      age: (json['age'] as num).toDouble(),
      weight: (json['weight'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      bmi: (json['bmi'] as num).toDouble(),
      bodyFat: (json['bodyFat'] as num).toDouble(),
      muscleMass: (json['muscleMass'] as num).toDouble(),
      goal: (json['goal'] as num).toDouble(),
      physicalActivity: (json['physicalActivity'] as num).toDouble(),
      createdBy: json['createdBy'] as String,
      creationDate: DateTime.parse(json['creationDate'] as String),
      lastUpdatedDate: DateTime.parse(json['lastUpdatedDate'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$UserBiodataEntityToJson(UserBiodataEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user.toJson(),
      'age': instance.age,
      'weight': instance.weight,
      'height': instance.height,
      'bmi': instance.bmi,
      'bodyFat': instance.bodyFat,
      'muscleMass': instance.muscleMass,
      'goal': instance.goal,
      'physicalActivity': instance.physicalActivity,
      'createdBy': instance.createdBy,
      'creationDate': instance.creationDate.toIso8601String(),
      'lastUpdatedDate': instance.lastUpdatedDate.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };

CreateUserBiodataDto _$CreateUserBiodataDtoFromJson(
        Map<String, dynamic> json) =>
    CreateUserBiodataDto(
      userId: (json['userId'] as num).toDouble(),
      age: (json['age'] as num).toDouble(),
      weight: (json['weight'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      bmi: (json['bmi'] as num).toDouble(),
      bodyFat: (json['bodyFat'] as num).toDouble(),
      muscleMass: (json['muscleMass'] as num).toDouble(),
      goal: (json['goal'] as num).toDouble(),
      physicalActivity: (json['physicalActivity'] as num).toDouble(),
      createdBy: json['createdBy'] as String,
    );

Map<String, dynamic> _$CreateUserBiodataDtoToJson(
        CreateUserBiodataDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'age': instance.age,
      'weight': instance.weight,
      'height': instance.height,
      'bmi': instance.bmi,
      'bodyFat': instance.bodyFat,
      'muscleMass': instance.muscleMass,
      'goal': instance.goal,
      'physicalActivity': instance.physicalActivity,
      'createdBy': instance.createdBy,
    };

CreateManyUserBiodataEntityDto _$CreateManyUserBiodataEntityDtoFromJson(
        Map<String, dynamic> json) =>
    CreateManyUserBiodataEntityDto(
      bulk: (json['bulk'] as List<dynamic>?)
              ?.map((e) =>
                  CreateUserBiodataDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CreateManyUserBiodataEntityDtoToJson(
        CreateManyUserBiodataEntityDto instance) =>
    <String, dynamic>{
      'bulk': instance.bulk.map((e) => e.toJson()).toList(),
    };

UpdateUserBiodataDto _$UpdateUserBiodataDtoFromJson(
        Map<String, dynamic> json) =>
    UpdateUserBiodataDto();

Map<String, dynamic> _$UpdateUserBiodataDtoToJson(
        UpdateUserBiodataDto instance) =>
    <String, dynamic>{};

RestAIPromptTestFunctionPost$RequestBody
    _$RestAIPromptTestFunctionPost$RequestBodyFromJson(
            Map<String, dynamic> json) =>
        RestAIPromptTestFunctionPost$RequestBody(
          imageBase64: json['imageBase64'] as String?,
        );

Map<String, dynamic> _$RestAIPromptTestFunctionPost$RequestBodyToJson(
        RestAIPromptTestFunctionPost$RequestBody instance) =>
    <String, dynamic>{
      'imageBase64': instance.imageBase64,
    };
