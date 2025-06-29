import 'package:dio/dio.dart';
import 'package:nexlock_app/core/handlers/dio_exception_handler.dart';
import 'package:nexlock_app/core/handlers/dio_handler.dart';
import 'package:nexlock_app/features/modules/domain/models/get_module_by_id_response.dart';
import 'package:nexlock_app/features/modules/domain/models/get_module_response.dart';

class ModulesRepository {
  final DioClient _dio = DioClient();

  Future<List<GetModuleResponse>> getModules() async {
    try {
      final response = await _dio.instance.get('/api/v1/modules');

      if (response.statusCode != 200) {
        throw Exception('Failed to load modules: ${response.statusMessage}');
      }

      return (response.data as List)
          .map((module) => GetModuleResponse.fromJson(module))
          .toList();
    } catch (e) {
      if (e is DioException) {
        final errorMessage = parseDioError(e);
        throw Exception(errorMessage);
      } else {
        throw Exception('An unexpected error occurred: $e');
      }
    }
  }

  Future<GetModuleByIdResponse> getModuleById(String moduleId) async {
    try {
      final response = await _dio.instance.get('/api/v1/modules/$moduleId');

      if (response.statusCode != 200) {
        throw Exception('Failed to load module: ${response.statusMessage}');
      }

      return GetModuleByIdResponse.fromJson(response.data);
    } catch (e) {
      if (e is DioException) {
        final errorMessage = parseDioError(e);
        throw Exception(errorMessage);
      } else {
        throw Exception('An unexpected error occurred: $e');
      }
    }
  }
}
