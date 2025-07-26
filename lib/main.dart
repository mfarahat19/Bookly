import 'package:bookly/config/app.dart';
import 'package:bookly/core/utils/servicers_locator.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/view%20model/featured_book_cubit/featured_books_cubit.dart';
import 'package:bookly/features/search/presentation/view%20model/search_book_cubit/Search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/home/presentation/view model/newest_book_cubit/newest_books_cubit.dart';
import 'features/home/presentation/view model/observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  setupServicesLocator();
  runApp(
    MultiBlocProvider(
      providers: [
        // BlocProvider(
        //   create: (context) => SearchBooksCubit(
        //     getIt.get<HomeRepoImpl>(),
        //   ),
        // ),
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..getFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..getNewestBooks(),
        )
      ],
      child: const Bookly(),
    ),
  );
}
