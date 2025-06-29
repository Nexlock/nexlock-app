import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nexlock_app/features/lockers/domain/models/rental_model.dart';

part 'rental_state.freezed.dart';
part 'rental_state.g.dart';

@freezed
sealed class RentalState with _$RentalState {
  const factory RentalState({
    @Default([]) List<RentalModel> rentals,
    @Default(false) bool isLoading,
    String? error,
  }) = _RentalState;

  factory RentalState.fromJson(Map<String, dynamic> json) =>
      _$RentalStateFromJson(json);
}
