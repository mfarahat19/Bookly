import 'package:bookly/config/routes.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchList extends StatelessWidget {
  const SearchList({super.key, required this.books});
  final List books;

  @override
  Widget build(BuildContext context) {
    print('Book details route pushed${books.length}');

    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.bookDetailsRoute);
      },
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (context, index) => NewestBookItem(book: books[index]),
        itemCount: books.length,
      ),
    );
  }
}
