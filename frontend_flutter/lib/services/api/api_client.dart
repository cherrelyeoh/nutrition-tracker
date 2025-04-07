// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';

import 'app/app_client.dart';
import 'ai_prompt/ai_prompt_client.dart';
import 'user_meal_log/user_meal_log_client.dart';
import 'ai_integration_logs/ai_integration_logs_client.dart';
import 'authentication/authentication_client.dart';
import 'user_meal_questions/user_meal_questions_client.dart';

/// BigBum Document `v1.0`.
///
/// BigBum API description.
class ApiClient {
  ApiClient(
    Dio dio, {
    String? baseUrl,
  })  : _dio = dio,
        _baseUrl = baseUrl;

  final Dio _dio;
  final String? _baseUrl;

  static String get version => '1.0';

  AppClient? _app;
  AIPromptClient? _aIPrompt;
  UserMealLogClient? _userMealLog;
  AIIntegrationLogsClient? _aIIntegrationLogs;
  AuthenticationClient? _authentication;
  UserMealQuestionsClient? _userMealQuestions;

  AppClient get app => _app ??= AppClient(_dio, baseUrl: _baseUrl);

  AIPromptClient get aIPrompt => _aIPrompt ??= AIPromptClient(_dio, baseUrl: _baseUrl);

  UserMealLogClient get userMealLog => _userMealLog ??= UserMealLogClient(_dio, baseUrl: _baseUrl);

  AIIntegrationLogsClient get aIIntegrationLogs => _aIIntegrationLogs ??= AIIntegrationLogsClient(_dio, baseUrl: _baseUrl);

  AuthenticationClient get authentication => _authentication ??= AuthenticationClient(_dio, baseUrl: _baseUrl);

  UserMealQuestionsClient get userMealQuestions => _userMealQuestions ??= UserMealQuestionsClient(_dio, baseUrl: _baseUrl);
}
