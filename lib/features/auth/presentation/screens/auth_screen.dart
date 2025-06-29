import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nexlock_app/core/constants/colors.dart';
import 'package:nexlock_app/features/auth/domain/models/auth_state.dart';
import 'package:nexlock_app/features/auth/domain/providers/auth_notifier.dart';
import 'package:nexlock_app/ui/glassmorphic_tab_widget.dart';
import 'package:nexlock_app/features/auth/presentation/widgets/login_form_widget.dart';
import 'package:nexlock_app/features/auth/presentation/widgets/register_form_widget.dart';

class AuthScreen extends ConsumerStatefulWidget {
  const AuthScreen({super.key});

  @override
  ConsumerState<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends ConsumerState<AuthScreen> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue<AuthState>>(authProvider, (previous, next) {
      next.whenData((authState) {
        if (authState.isAuthenticated) {
          context.go('/home');
        }
      });
    });

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                const SizedBox(height: 40),
                // App Logo/Title
                const Text(
                  'NexLock',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Secure Authentication',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(height: 60),
                // Tab Selector
                Container(
                  height: 50,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: AppColors.glassSurface,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: AppColors.glassBorder, width: 1),
                  ),
                  child: Row(
                    children: [
                      GlassmorphicTabWidget(
                        text: 'Login',
                        isSelected: _selectedTab == 0,
                        onTap: () => setState(() => _selectedTab = 0),
                      ),
                      GlassmorphicTabWidget(
                        text: 'Register',
                        isSelected: _selectedTab == 1,
                        onTap: () => setState(() => _selectedTab = 1),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                // Form Container
                Expanded(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: AppColors.glassSurface,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: AppColors.glassBorder,
                        width: 1,
                      ),
                    ),
                    child: SingleChildScrollView(
                      child:
                          _selectedTab == 0
                              ? const LoginFormWidget()
                              : const RegisterFormWidget(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
