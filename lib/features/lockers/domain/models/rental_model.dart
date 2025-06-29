import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nexlock_app/features/lockers/domain/models/locker_model.dart';

part 'rental_model.freezed.dart';
part 'rental_model.g.dart';

@freezed
sealed class RentalModel with _$RentalModel {
  const factory RentalModel({
    required String id,
    required String lockerId,
    required String userId,
    required LockerModel locker,
    required DateTime startDate,
    required DateTime expiresAt,
    required bool isLocked,
  }) = _RentalModel;

  factory RentalModel.fromJson(Map<String, dynamic> json) =>
      _$RentalModelFromJson(json);
}
