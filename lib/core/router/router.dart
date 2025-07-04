import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nexlock_app/features/auth/domain/providers/auth_notifier.dart';
import 'package:nexlock_app/features/auth/presentation/screens/auth_screen.dart';
import 'package:nexlock_app/features/auth/presentation/screens/profile_screen.dart';
import 'package:nexlock_app/features/home/presentation/screens/home_screen.dart';
import 'package:nexlock_app/features/lockers/presentation/screens/rental_list_screen.dart';
import 'package:nexlock_app/features/modules/presentation/screens/module_screen.dart';
import 'package:nexlock_app/features/splash/presentation/screens/splash_screen.dart';

// GoRouter configuration
final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);

  return GoRouter(
    redirect: (context, state) {
      return authState.when(
        data: (auth) {
          final isLoggedIn = auth.isAuthenticated;
          final isGoingToAuth = state.matchedLocation == '/auth';
          final isGoingToSplash = state.matchedLocation == '/';

          // If not logged in and not going to auth or splash, redirect to auth
          if (!isLoggedIn && !isGoingToAuth && !isGoingToSplash) {
            return '/auth';
          }

          // If logged in and going to auth or splash, redirect to home
          if (isLoggedIn && (isGoingToAuth || isGoingToSplash)) {
            return '/home';
          }

          return null;
        },
        loading: () => null,
        error: (_, __) => '/auth',
      );
    },
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashScreen()),
      GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
      GoRoute(path: '/auth', builder: (context, state) => const AuthScreen()),
      GoRoute(
        path: '/profile',
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: '/rentals',
        builder: (context, state) => const RentalListScreen(),
      ),
      GoRoute(
        path: '/module/:moduleId',
        builder: (context, state) {
          final moduleId = state.pathParameters['moduleId']!;
          return ModuleScreen(moduleId: moduleId);
        },
      ),
    ],
  );
});

// Keep the old router for backward compatibility
final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashScreen()),
    GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
    GoRoute(path: '/auth', builder: (context, state) => const AuthScreen()),
  ],
);
