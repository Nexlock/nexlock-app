import 'package:freezed_annotation/freezed_annotation.dart';

part 'lock_unlock_rental.freezed.dart';
part 'lock_unlock_rental.g.dart';

enum ActionType { lock, unlock }

@freezed
sealed class LockUnlockRental with _$LockUnlockRental {
  const factory LockUnlockRental({
    required String rentalId,
    required ActionType action,
  }) = _LockUnlockRental;

  factory LockUnlockRental.fromJson(Map<String, dynamic> json) =>
      _$LockUnlockRentalFromJson(json);
}

extension LockUnlockRentalExtension on LockUnlockRental {
  Map<String, dynamic> toJsonWithStringAction() {
    return {
      'rentalId': rentalId,
      'action': action == ActionType.lock ? 'lock' : 'unlock',
    };
  }
}
