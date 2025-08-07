import 'package:bookly/core/utils/widgets/loading_animated_widget.dart';
import 'package:bookly/core/utils/widgets/message_error_widget.dart';
import 'package:bookly/features/home/data/models/Book_model.dart';
import 'package:bookly/features/home/presentation/view%20model/featured_book_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/view%20model/featured_book_cubit/featured_books_states.dart';
import 'package:bookly/features/home/presentation/views/widgets/Featured_books_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookListWidget extends StatelessWidget {
  const BookListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
      builder: (context, state) {
        if (state is FeaturedBooksLoadingState) {
          return LoadingAnamitedWidget();
        } else if (state is FeaturedBooksErrorState) {
          return MessageErrorWidget(
            error: state.errorMessage,
          );
        } else if (state is FeaturedBooksSuccessState) {
          return FeaturedBookList(
            books: state.books,
          );
        }
        return Text('');
      },
    );
  }
}
