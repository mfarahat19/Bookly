import 'package:bookly/core/utils/extensios.dart';
import 'package:bookly/features/home/data/models/Book_model.dart';
import 'package:flutter/material.dart';
import 'custom_book_image.dart';

class FeaturedBookList extends StatelessWidget {
  final List<BookModel> books;
  const FeaturedBookList({
    super.key,
    required this.books,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight * 0.3,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CustomBookImage(
            imageUrl: books[index].volumeInfo?.imageLinks?.thumbnail ??
                'https://raw.githubusercontent.com/felangel/bloc/master/assets/logos/bloc.png',
          ),
        ),
        itemCount: books.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
