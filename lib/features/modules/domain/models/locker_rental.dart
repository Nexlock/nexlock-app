import 'package:freezed_annotation/freezed_annotation.dart';

part 'locker_rental.freezed.dart';
part 'locker_rental.g.dart';

@freezed
sealed class LockerRental with _$LockerRental {
  const factory LockerRental({
    required String id,
    required DateTime startDate,
    required DateTime expiresAt,
    required bool isLocked,
    required String userId,
    required bool isOwnRental,
    DateTime? endDate,
  }) = _LockerRental;

  factory LockerRental.fromJson(Map<String, dynamic> json) =>
      _$LockerRentalFromJson(json);
}
