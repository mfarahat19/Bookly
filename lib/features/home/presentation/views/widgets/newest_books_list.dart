import 'package:bookly/features/home/data/models/Book_model.dart';
import 'package:flutter/material.dart';

import 'newest_books_item.dart';

class NewestBookslist extends StatelessWidget {
  const NewestBookslist({super.key,required this.books});
  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) =>NewestBookItem(book: books[index],),
      itemCount: books.length,
    );
  }
}
