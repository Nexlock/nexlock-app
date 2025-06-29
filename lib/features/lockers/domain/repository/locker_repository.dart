import 'package:dio/dio.dart';
import 'package:nexlock_app/core/handlers/dio_exception_handler.dart';
import 'package:nexlock_app/core/handlers/dio_handler.dart';
import 'package:nexlock_app/features/lockers/domain/models/extend_rental.dart';
import 'package:nexlock_app/features/lockers/domain/models/lock_unlock_rental.dart';
import 'package:nexlock_app/features/lockers/domain/models/rental_model.dart';

class LockerRepository {
  final DioClient _dio = DioClient();

  Future<RentalModel> createRental(String lockerId) async {
    try {
      final response = await _dio.instance.post(
        '/api/v1/rentals',
        data: {'lockerId': lockerId},
      );

      if (response.statusCode != 201) {
        throw Exception('Failed to create rental: ${response.statusMessage}');
      }

      return RentalModel.fromJson(response.data);
    } catch (e) {
      if (e is DioException) {
        final errorMessage = parseDioError(e);
        throw Exception(errorMessage);
      } else {
        throw Exception('An unexpected error occurred: $e');
      }
    }
  }

  Future<RentalModel> extendRental(String rentalId, int hours) async {
    try {
      final response = await _dio.instance.post(
        '/api/v1/rentals/extend',
        data: ExtendRental(rentalId: rentalId, hours: hours).toJson(),
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to extend rental: ${response.statusMessage}');
      }

      return RentalModel.fromJson(response.data);
    } catch (e) {
      if (e is DioException) {
        final errorMessage = parseDioError(e);
        throw Exception(errorMessage);
      } else {
        throw Exception('An unexpected error occurred: $e');
      }
    }
  }

  Future<RentalModel> toggleLock(String rentalId, ActionType action) async {
    try {
      final lockUnlockRental = LockUnlockRental(
        rentalId: rentalId,
        action: action,
      );
      final response = await _dio.instance.post(
        '/api/v1/rentals/lock-unlock',
        data: lockUnlockRental.toJsonWithStringAction(),
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to unlock locker: ${response.statusMessage}');
      }

      return RentalModel.fromJson(response.data);
    } catch (e) {
      if (e is DioException) {
        final errorMessage = parseDioError(e);
        throw Exception(errorMessage);
      } else {
        throw Exception('An unexpected error occurred: $e');
      }
    }
  }

  Future<RentalModel> checkoutRental(String rentalId) async {
    try {
      final response = await _dio.instance.post(
        '/api/v1/rentals/checkout',
        data: {'rentalId': rentalId},
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to checkout rental: ${response.statusMessage}');
      }

      return RentalModel.fromJson(response.data);
    } catch (e) {
      if (e is DioException) {
        final errorMessage = parseDioError(e);
        throw Exception(errorMessage);
      } else {
        throw Exception('An unexpected error occurred: $e');
      }
    }
  }

  Future<List<RentalModel>> getRentals() async {
    try {
      final response = await _dio.instance.get('/api/v1/rentals');

      if (response.statusCode != 200) {
        throw Exception('Failed to load rentals: ${response.statusMessage}');
      }

      return (response.data as List)
          .map((rental) => RentalModel.fromJson(rental))
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
}
