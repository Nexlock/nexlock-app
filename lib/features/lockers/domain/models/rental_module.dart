import 'package:freezed_annotation/freezed_annotation.dart';

part 'rental_module.freezed.dart';
part 'rental_module.g.dart';

@freezed
sealed class RentalModule with _$RentalModule {
  const factory RentalModule({
    required String id,
    required String name,
    required String deviceId,
  }) = _RentalModule;

  factory RentalModule.fromJson(Map<String, dynamic> json) =>
      _$RentalModuleFromJson(json);
}
