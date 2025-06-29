import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nexlock_app/features/modules/domain/models/get_module_by_id_response.dart';
import 'package:nexlock_app/features/modules/domain/models/modules_state.dart';
import 'package:nexlock_app/features/modules/domain/repository/modules_repository.dart';

class ModulesNotifier extends AsyncNotifier<ModulesState> {
  final ModulesRepository _modulesRepository = ModulesRepository();

  @override
  Future<ModulesState> build() async {
    try {
      final modules = await _modulesRepository.getModules();
      return ModulesState(modules: modules);
    } catch (e) {
      return ModulesState(error: e.toString());
    }
  }

  Future<void> refreshModules() async {
    state = const AsyncValue.data(ModulesState(isLoading: true));

    state = await AsyncValue.guard(() async {
      try {
        final modules = await _modulesRepository.getModules();
        return ModulesState(modules: modules);
      } catch (e) {
        return ModulesState(error: e.toString());
      }
    });
  }

  Future<GetModuleByIdResponse> getModuleById(String moduleId) async {
    try {
      return await _modulesRepository.getModuleById(moduleId);
    } catch (e) {
      throw Exception('Failed to load module: $e');
    }
  }
}
