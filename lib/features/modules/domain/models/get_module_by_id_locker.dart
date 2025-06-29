// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nexlock_app/features/modules/domain/models/locker_rental.dart';

part 'get_module_by_id_locker.freezed.dart';
part 'get_module_by_id_locker.g.dart';

@freezed
sealed class GetModuleByIdLocker with _$GetModuleByIdLocker {
  const factory GetModuleByIdLocker({
    required String id,
    required String lockerId,
    required bool isAvailable,
    LockerRental? currentRental,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _GetModuleByIdLocker;

  factory GetModuleByIdLocker.fromJson(Map<String, dynamic> json) =>
      _$GetModuleByIdLockerFromJson(json);
}
