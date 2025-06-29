import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nexlock_app/features/modules/domain/models/get_module_by_id_locker.dart';

part 'get_module_by_id_response.freezed.dart';
part 'get_module_by_id_response.g.dart';

@freezed
sealed class GetModuleByIdResponse with _$GetModuleByIdResponse {
  const factory GetModuleByIdResponse({
    required String id,
    required String name,
    String? description,
    String? location,
    @Default([]) List<GetModuleByIdLocker> lockers,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _GetModuleByIdResponse;

  factory GetModuleByIdResponse.fromJson(Map<String, dynamic> json) =>
      _$GetModuleByIdResponseFromJson(json);
}
