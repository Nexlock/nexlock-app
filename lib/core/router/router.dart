import 'package:go_router/go_router.dart';
import 'package:nexlock_app/features/home/presentation/screens/home_screen.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [GoRoute(path: '/', builder: (context, state) => const HomeScreen())],
);
