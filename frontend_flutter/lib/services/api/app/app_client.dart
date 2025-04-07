// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'app_client.g.dart';

@RestApi()
abstract class AppClient {
  factory AppClient(Dio dio, {String? baseUrl}) = _AppClient;

  @GET('/')
  Future<void> appControllerGetHello();
}
