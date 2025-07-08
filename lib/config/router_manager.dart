import 'package:bookly/features/home/presentation/screens/home_screen.dart';
import 'package:bookly/features/splash/presentation/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class RouterManager {
  static const String homeRoute = '/home';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
      path:homeRoute,
      builder: (context, state) => HomeScreen(),
    ),
  ]);
}
