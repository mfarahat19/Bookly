import 'package:bookly/core/utils/extensios.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/utils/widgets/loading_animated_widget.dart';
import 'package:bookly/core/utils/widgets/message_error_widget.dart';
import 'package:bookly/features/home/data/models/Book_model.dart';
import 'package:bookly/features/home/presentation/view%20model/similer_book_cubit/similer_books_cubit.dart';
import 'package:bookly/features/home/presentation/view%20model/similer_book_cubit/similer_books_states.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_actions.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/rating_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBookDetails extends StatelessWidget {
  const CustomBookDetails({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    final double width = context.screenWidth;
    final double height = context.screenHeight;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 10,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .25),
            child: CustomBookImage(
              book: book,
            ),
          ),
          Text(
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            book.volumeInfo?.title ?? 'No Title',
            style: style30(),
          ),
          Text(
            book.volumeInfo?.authors?[0] ?? 'No Author',
            style: style13().copyWith(
              color: Colors.grey,
            ),
          ),
          RatingWidget(
            count: book.volumeInfo?.averageRating ?? 0,
            rating: book.volumeInfo?.ratingCount ?? 0,
          ),
          BooksActions(),
          SizedBox(
            height: height * .04,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'You Can Also Like',
                style: style18().copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          BlocBuilder<SimilerBooksCubit, SimilerBooksStates>(
            builder: (context, state) {
              if (state is SimilerBooksSuccessState) {
                return SimilarBooksList(
                  book: state.books,
                );
              } else if (state is SimilerBooksLoadingState) {
                return const Center(child: LoadingAnamitedWidget());
              } else if (state is SimilerBooksErrorState) {
                MessageErrorWidget(
                  error: state.errorMessage,
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }
}
