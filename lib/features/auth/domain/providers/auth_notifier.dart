import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nexlock_app/core/handlers/secure_storage_handler.dart';
import 'package:nexlock_app/features/auth/domain/models/auth_state.dart';
import 'package:nexlock_app/features/auth/domain/models/user_jwt_model.dart';
import 'package:nexlock_app/features/auth/domain/repository/auth_repository.dart';

class AuthNotifier extends AsyncNotifier<AuthState> {
  final SecureStorage _secureStorage = SecureStorage();
  final AuthRepository _authRepository = AuthRepository();

  @override
  Future<AuthState> build() async {
    final token = await _secureStorage.getToken();

    if (token != null) {
      try {
        final userData = await _authRepository.getUserDetails();
        final user = UserJwtModel.fromJson(userData);
        return AuthState(isAuthenticated: true, user: user);
      } catch (e) {
        return AuthState(isAuthenticated: false, error: e.toString());
      }
    }

    return AuthState();
  }

  Future<void> login(String email, String password) async {
    state = const AsyncValue.data(AuthState(isLoading: true));

    state = await AsyncValue.guard(() async {
      try {
        await _authRepository.login(email, password);
        final userData = await _authRepository.getUserDetails();
        final user = UserJwtModel.fromJson(userData);

        return AuthState(isAuthenticated: true, user: user);
      } catch (e) {
        return AuthState(isAuthenticated: false, error: e.toString());
      }
    });
  }

  Future<void> register(String email, String password, String name) async {
    state = const AsyncValue.data(AuthState(isLoading: true));

    state = await AsyncValue.guard(() async {
      try {
        await _authRepository.register(email, password, name);
        final userData = await _authRepository.getUserDetails();
        final user = UserJwtModel.fromJson(userData);

        return AuthState(isAuthenticated: true, user: user);
      } catch (e) {
        return AuthState(isAuthenticated: false, error: e.toString());
      }
    });
  }

  Future<void> getUserDetails() async {
    state = const AsyncValue.data(AuthState(isLoading: true));

    state = await AsyncValue.guard(() async {
      try {
        final userData = await _authRepository.getUserDetails();
        final user = UserJwtModel.fromJson(userData);

        return AuthState(isAuthenticated: true, user: user);
      } catch (e) {
        return AuthState(isAuthenticated: false, error: e.toString());
      }
    });
  }

  Future<void> logout() async {
    state = const AsyncLoading();

    await _secureStorage.deleteToken();
    state = AsyncValue.data(AuthState());
  }
}

final authProvider = AsyncNotifierProvider<AuthNotifier, AuthState>(
  () => AuthNotifier(),
);
