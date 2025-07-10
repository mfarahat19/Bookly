import 'package:bookly/config/routes.dart';
import 'package:bookly/features/home/presentation/screens/book_screen.dart';
import 'package:bookly/features/home/presentation/screens/home_screen.dart';
import 'package:bookly/features/search/presentation/screens/search_screen.dart';
import 'package:bookly/features/splash/presentation/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class RouterManager {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: AppRoutes.splashRoute,
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: AppRoutes.homeRoute,
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: AppRoutes.bookDetailsRoute,
        builder: (context, state) => BookScreen(),
      ),
      GoRoute(
          path: AppRoutes.searchRoute,
          builder: (context, state) => SearchScreen())
    ],
  );
}
