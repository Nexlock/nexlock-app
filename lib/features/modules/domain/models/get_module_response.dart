import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_module_response.freezed.dart';
part 'get_module_response.g.dart';

@freezed
sealed class GetModuleResponse with _$GetModuleResponse {
  const factory GetModuleResponse({
    required String id,
    required String name,
    String? description,
    String? location,
    required int lockerCount,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _GetModuleResponse;

  factory GetModuleResponse.fromJson(Map<String, dynamic> json) =>
      _$GetModuleResponseFromJson(json);
}
