import 'package:bookly/core/utils/extensios.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/screens/widgets/books_actions.dart';
import 'package:bookly/features/home/presentation/screens/widgets/custom_book_image.dart';
import 'package:bookly/features/home/presentation/screens/widgets/rating_widget.dart';
import 'package:bookly/features/home/presentation/screens/widgets/similar_books_list.dart';
import 'package:flutter/material.dart';

class CustomBookDetails extends StatelessWidget {
  const CustomBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = context.screenWidth;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 8,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .25),
          child: CustomBookImage(),
        ),
        Text(
          'The Jungle Book',
          style: style30(),
        ),
        Text(
          'Mohamed Farahat',
          style: style13().copyWith(
            color: Colors.grey,
          ),
        ),
        RatingWidget(),
        BooksActions(),
        const SizedBox(
          height: 30,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'You Can Also Like',
              style: style18().copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBooksList(),
      ],
    );
  }
}


