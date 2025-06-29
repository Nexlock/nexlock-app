import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nexlock_app/features/modules/domain/models/modules_state.dart';
import 'package:nexlock_app/features/modules/domain/providers/modules_repository.dart';

final modulesProvider = AsyncNotifierProvider<ModulesNotifier, ModulesState>(
  () => ModulesNotifier(),
);
