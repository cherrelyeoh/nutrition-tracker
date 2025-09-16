import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenStorage {
  static const _accessTokenKey = 'accessToken';
  static const _refreshTokenKey = 'refreshToken';
  static const _expiryKey = 'tokenExpiry';

  static const _storage = FlutterSecureStorage();

  static Future<void> saveTokens(
      String accessToken, String refreshToken, DateTime? expiry) async {
    await _storage.write(key: _accessTokenKey, value: accessToken);
    await _storage.write(key: _refreshTokenKey, value: refreshToken);
    await _storage.write(key: _expiryKey, value: expiry?.toIso8601String());
  }

  static Future<String?> getAccessToken() async {
    return _storage.read(key: _accessTokenKey);
  }

  static Future<String?> getRefreshToken() async {
    return _storage.read(key: _refreshTokenKey);
  }

  static Future<DateTime?> getExpiry() async {
    final expiry = await _storage.read(key: _expiryKey);
    return expiry != null ? DateTime.parse(expiry) : null;
  }

  static Future<void> clear() async {
    await _storage.deleteAll();
  }
}
