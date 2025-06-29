import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:nexlock_app/core/handlers/secure_storage_handler.dart';

class DioClient {
  static final DioClient _singleton = DioClient._internal();
  static late Dio _dio;
  final SecureStorage _secureStorage = SecureStorage();

  factory DioClient() {
    return _singleton;
  }

  DioClient._internal() {
    final apiUrl = dotenv.env['API_URL'] ?? 'https://api.example.com';
    _dio = Dio(
      BaseOptions(
        baseUrl: apiUrl,
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60),
      ),
    );

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await _secureStorage.getToken();
          ;
          if (token != null && token.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          return handler.next(options);
        },
        onError: (DioException e, handler) {
          if (e.response?.statusCode == 401) {
            _secureStorage.deleteToken();
          }
          handler.next(e);
        },
      ),
    );
  }

  Dio get instance => _dio;
}
