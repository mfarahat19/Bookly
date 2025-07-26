import 'package:bookly/core/utils/widgets/loading_animated_widget.dart';
import 'package:bookly/features/home/presentation/view%20model/newest_book_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBookListView extends StatelessWidget {
  const NewestBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksStates>(
      builder: (context, state) {
        if (state is NewestBooksLoading) {
          return const LoadingAnamitedWidget();
        } else if (state is NewestBooksSuccess) {
          if (state.books.isEmpty) {
            return const Text('No books found');
          }
          return NewestBookslist(books: state.books);
        } else if (state is NewestBooksError) {
          return Text('Error: ${state.errorMessage}');
        }
        return const SizedBox();
      },
    );
  }
}
