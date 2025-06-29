import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nexlock_app/features/lockers/domain/models/lock_unlock_rental.dart';
import 'package:nexlock_app/features/lockers/domain/models/rental_model.dart';
import 'package:nexlock_app/features/lockers/domain/models/rental_state.dart';
import 'package:nexlock_app/features/lockers/domain/repository/locker_repository.dart';

class LockerNotifier extends AsyncNotifier<RentalState> {
  final LockerRepository _lockerRepository = LockerRepository();

  @override
  Future<RentalState> build() async {
    try {
      final rentals = await _lockerRepository.getRentals();
      return RentalState(rentals: rentals);
    } catch (e) {
      return RentalState(error: e.toString());
    }
  }

  Future<RentalState> refreshRentals() async {
    state = const AsyncValue.data(RentalState(isLoading: true));

    state = await AsyncValue.guard(() async {
      try {
        final rentals = await _lockerRepository.getRentals();
        return RentalState(rentals: rentals);
      } catch (e) {
        return RentalState(error: e.toString());
      }
    });

    return state.value!;
  }

  Future<RentalModel> toggleLock(String rentalId, ActionType action) async {
    try {
      final rental = await _lockerRepository.toggleLock(rentalId, action);
      return rental;
    } catch (e) {
      throw Exception('Failed to toggle lock: $e');
    }
  }

  Future<RentalModel> createRental(String lockerId) async {
    try {
      final rental = await _lockerRepository.createRental(lockerId);
      return rental;
    } catch (e) {
      throw Exception('Failed to create rental: $e');
    }
  }

  Future<RentalModel> extendRental(String rentalId, int hours) async {
    try {
      final rental = await _lockerRepository.extendRental(rentalId, hours);
      return rental;
    } catch (e) {
      throw Exception('Failed to extend rental: $e');
    }
  }

  Future<RentalModel> checkoutRental(String rentalId) async {
    try {
      final rental = await _lockerRepository.checkoutRental(rentalId);
      return rental;
    } catch (e) {
      throw Exception('Failed to checkout rental: $e');
    }
  }

  Future<List<RentalModel>> getRentals() async {
    try {
      final rentals = await _lockerRepository.getRentals();
      return rentals;
    } catch (e) {
      throw Exception('Failed to get rental: $e');
    }
  }
}
