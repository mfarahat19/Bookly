import 'package:bookly/core/utils/extensios.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

import '../../../data/models/Book_model.dart' show BookModel;

class SimilarBooksList extends StatelessWidget {
  const SimilarBooksList({super.key,required this.book});
final List<BookModel> book;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: context.screenHeight * .17,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CustomBookImage(book: book[index],),
        ),
        itemCount: book.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
