import 'package:bookly/config/routes.dart';
import 'package:bookly/core/utils/servicers_locator.dart';
import 'package:bookly/features/home/data/models/Book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/view%20model/similer_book_cubit/similer_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/book_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/splash/presentation/screens/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        builder: (context, state) => BlocProvider(
          create: (context) => SimilerBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(
            book: state.extra as BookModel,
          ),
        ),
      ),
    ],
  );
}
