import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();
  final String _tokenKey = 'token';

  Future<String?> getToken() async {
    return await _storage.read(key: _tokenKey);
  }

  Future<void> setToken(String token) async {
    await _storage.write(key: _tokenKey, value: token);
  }

  Future<void> deleteToken() async {
    await _storage.delete(key: _tokenKey);
  }
}
