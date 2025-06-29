import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nexlock_app/features/modules/domain/models/get_module_response.dart';

part 'modules_state.freezed.dart';
part 'modules_state.g.dart';

@freezed
sealed class ModulesState with _$ModulesState {
  const factory ModulesState({
    @Default([]) List<GetModuleResponse> modules,
    @Default(false) bool isLoading,
    String? error,
  }) = _ModulesState;

  factory ModulesState.fromJson(Map<String, dynamic> json) =>
      _$ModulesStateFromJson(json);
}
