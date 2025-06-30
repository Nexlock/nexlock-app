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
      // Show immediate loading state for this specific rental
      _updateRentalInState(rentalId, isLoading: true);

      final rental = await _lockerRepository.toggleLock(rentalId, action);

      // Wait for hardware to process the command
      await Future.delayed(const Duration(milliseconds: 500));

      // Refresh the specific rental status multiple times to ensure we get the updated state
      RentalModel? updatedRental;
      for (int i = 0; i < 5; i++) {
        try {
          updatedRental = await _lockerRepository.getRentalStatus(rentalId);
          // If the status matches what we expect, break early
          final expectedLocked = action == ActionType.lock;
          if (updatedRental.isLocked == expectedLocked) {
            break;
          }
          await Future.delayed(const Duration(milliseconds: 500));
        } catch (e) {
          // If status check fails, use the original response
          if (i == 4) updatedRental = rental;
        }
      }

      // Update the rental in our state
      _updateRentalInState(rentalId, rental: updatedRental ?? rental);

      // Refresh the entire rental list to ensure consistency
      await refreshRentals();

      return updatedRental ?? rental;
    } catch (e) {
      // Remove loading state on error
      _updateRentalInState(rentalId, isLoading: false);
      throw Exception('Failed to toggle lock: $e');
    }
  }

  Future<RentalModel> createRental(String lockerId) async {
    try {
      final rental = await _lockerRepository.createRental(lockerId);
      // Refresh rentals to show the new rental
      await refreshRentals();
      return rental;
    } catch (e) {
      throw Exception('Failed to create rental: $e');
    }
  }

  Future<RentalModel> extendRental(String rentalId, int hours) async {
    try {
      final rental = await _lockerRepository.extendRental(rentalId, hours);
      // Update the specific rental in state
      _updateRentalInState(rentalId, rental: rental);
      return rental;
    } catch (e) {
      throw Exception('Failed to extend rental: $e');
    }
  }

  Future<RentalModel> checkoutRental(String rentalId) async {
    try {
      final rental = await _lockerRepository.checkoutRental(rentalId);
      // Refresh rentals to remove the checked out rental
      await refreshRentals();
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

  Future<RentalModel> getRentalStatus(String rentalId) async {
    try {
      final rental = await _lockerRepository.getRentalStatus(rentalId);
      // Update the specific rental in state
      _updateRentalInState(rentalId, rental: rental);
      return rental;
    } catch (e) {
      throw Exception('Failed to get rental status: $e');
    }
  }

  // Helper method to update a specific rental in the current state
  void _updateRentalInState(String rentalId,
      {RentalModel? rental, bool? isLoading}) {
    final currentState = state.value;
    if (currentState != null) {
      final updatedRentals = currentState.rentals.map((r) {
        if (r.id == rentalId) {
          if (rental != null) {
            return rental;
          } else if (isLoading != null) {
            // For now, we'll just return the original rental
            // In a more complex state management, we might track loading per rental
            return r;
          }
        }
        return r;
      }).toList();

      state = AsyncValue.data(RentalState(
        rentals: updatedRentals,
        isLoading: isLoading ?? false,
      ));
    }
  }
}
