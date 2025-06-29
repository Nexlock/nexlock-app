import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nexlock_app/features/lockers/domain/models/rental_module.dart';

part 'locker_model.freezed.dart';
part 'locker_model.g.dart';

@freezed
sealed class LockerModel with _$LockerModel {
  const factory LockerModel({
    required String id,
    required String lockerId,
    required String moduleId,
    required RentalModule module,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _LockerModel;

  factory LockerModel.fromJson(Map<String, dynamic> json) =>
      _$LockerModelFromJson(json);
}
