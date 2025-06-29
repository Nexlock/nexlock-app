import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nexlock_app/features/lockers/domain/models/rental_state.dart';
import 'package:nexlock_app/features/lockers/domain/providers/locker_notifier.dart';

final lockerProvider = AsyncNotifierProvider<LockerNotifier, RentalState>(
  () => LockerNotifier(),
);
