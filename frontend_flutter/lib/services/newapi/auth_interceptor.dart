import 'dart:async';
import 'package:chopper/chopper.dart';
import '../storage/token_storage.dart';

class AuthInterceptor implements Interceptor {
  final ChopperClient client;

  AuthInterceptor(this.client);

  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(
      Chain<BodyType> chain) async {
    String? accessToken = await TokenStorage.getAccessToken();
    DateTime? expiry = await TokenStorage.getExpiry();

    // If token expired, try to refresh
    if (expiry != null && DateTime.now().isAfter(expiry)) {
      final refreshed = await _refreshToken();
      if (refreshed) {
        accessToken = await TokenStorage.getAccessToken();
      } else {
        // Refresh failed -> logout user
        await TokenStorage.clear();
        throw Exception("Session expired. Please log in again.");
      }
    }

    // Add token to headers if available
    final request = applyHeader(
      chain.request,
      'Authorization',
      accessToken != null ? 'Bearer $accessToken' : '',
      override: true,
    );

    final response = await chain.proceed(request);

    // If backend says 401 -> try refresh and retry once
    if (response.statusCode == 401) {
      final refreshed = await _refreshToken();
      if (refreshed) {
        final newAccessToken = await TokenStorage.getAccessToken();
        final retryRequest = applyHeader(
          chain.request,
          'Authorization',
          'Bearer $newAccessToken',
          override: true,
        );
        return chain.proceed(retryRequest);
      }
    }

    return response;
  }

  Future<bool> _refreshToken() async {
    final refreshToken = await TokenStorage.getRefreshToken();
    if (refreshToken == null) return false;

    try {
      final refreshResponse =
          await client.send<Map<String, dynamic>, Map<String, dynamic>>(
        Request(
          'POST',
          'auth/refresh' as Uri, // Your NestJS refresh endpoint
          client.baseUrl,
          body: {'refreshToken': refreshToken},
        ),
      );

      if (refreshResponse.isSuccessful) {
        final data = refreshResponse.body!;
        final newAccessToken = data['accessToken'] as String;
        final newRefreshToken = data['refreshToken'] as String;
        final expiresIn = data['expiresIn'] as int; // seconds

        await TokenStorage.saveTokens(
          newAccessToken,
          newRefreshToken,
          DateTime.now().add(Duration(seconds: expiresIn)),
        );
        return true;
      }
    } catch (e) {
      print("Token refresh failed: $e");
    }

    return false;
  }
}
