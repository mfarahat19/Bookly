import 'package:bookly/core/utils/servicers_locator.dart';
import 'package:bookly/core/utils/widgets/loading_animated_widget.dart';
import 'package:bookly/core/utils/widgets/message_error_widget.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/search/data/repos/search_repo_impl.dart';
import 'package:bookly/features/search/presentation/view_model/search_book_cubit/Search_books_cubit.dart';
import 'package:bookly/features/search/presentation/view_model/search_book_cubit/featured_books_states.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key, required this.query});
  final String query;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBooksCubit(getIt.get<SearchRepoImpl>())
        ..getSearchBooks(q: query),
      child: Container(
        child: BlocBuilder<SearchBooksCubit, SearchBooksStates>(
          builder: (context, state) {
            if (state is SearchBooksLoadingState) {
              return LoadingAnamitedWidget();
            } else if (state is SearchBooksSuccessState) {
              return SearchList(
                books: state.books,
              );
            } else if (state is SearchBooksErrorState) {
              return MessageErrorWidget(
                error: state.errorMessage,
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
