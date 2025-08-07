import 'package:bookly/features/home/data/models/Book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({
    super.key,
    required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CustomBookBar(),
          const SizedBox(height: 20),
          CustomBookDetails(book: book),
        ],
      ),
    );
  }
}