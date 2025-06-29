import 'package:dio/dio.dart';
import 'package:nexlock_app/core/handlers/dio_exception_handler.dart';
import 'package:nexlock_app/core/handlers/dio_handler.dart';
import 'package:nexlock_app/core/handlers/secure_storage_handler.dart';

class AuthRepository {
  final SecureStorage _secureStorage = SecureStorage();
  final DioClient _dio = DioClient();

  Future<void> login(String email, String password) async {
    try {
      final response = await _dio.instance.post(
        '/api/v1/auth/login',
        data: {'email': email, 'password': password},
      );

      if (response.statusCode == 200) {
        final responseData = response.data;
        if (responseData is Map<String, dynamic>) {
          final token = responseData['token'];
          if (token != null && token is String) {
            await _secureStorage.setToken(token);
          }
        }
      }

      return response.data;
    } catch (e) {
      if (e is DioException) {
        final errorMessage = parseDioError(e);
        throw Exception(errorMessage);
      } else if (e is StateError) {
        throw Exception(
          'Network client initialization failed. Please try again.',
        );
      } else {
        throw Exception('An unexpected error occurred: $e');
      }
    }
  }

  Future<Map<String, dynamic>> register(
    String email,
    String password,
    String name,
  ) async {
    try {
      final response = await _dio.instance.post(
        '/api/v1/auth/register',
        data: {'email': email, 'password': password, 'name': name},
      );

      if (response.statusCode == 201) {
        final responseData = response.data;
        if (responseData is Map<String, dynamic>) {
          final token = responseData['token'];
          if (token != null && token is String) {
            await _secureStorage.setToken(token);
          }
        }
      }

      return response.data;
    } catch (e) {
      if (e is DioException) {
        final errorMessage = parseDioError(e);
        throw Exception(errorMessage);
      } else {
        throw Exception('An unexpected error occurred: $e');
      }
    }
  }

  Future<Map<String, dynamic>> getUserDetails() async {
    try {
      final token = await _secureStorage.getToken();
      if (token == null) {
        throw Exception('User is not authenticated');
      }

      final response = await _dio.instance.get(
        '/api/v1/auth/me',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      return response.data;
    } catch (e) {
      if (e is DioException) {
        final errorMessage = parseDioError(e);
        throw Exception(errorMessage);
      } else {
        throw Exception('An unexpected error occurred: $e');
      }
    }
  }

  Future<void> logout() async {
    await _secureStorage.deleteToken();
  }
}
