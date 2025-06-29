import 'package:freezed_annotation/freezed_annotation.dart';

part 'extend_rental.freezed.dart';
part 'extend_rental.g.dart';

@freezed
sealed class ExtendRental with _$ExtendRental {
  const factory ExtendRental({required String rentalId, required int hours}) =
      _ExtendRental;

  factory ExtendRental.fromJson(Map<String, dynamic> json) =>
      _$ExtendRentalFromJson(json);
}
