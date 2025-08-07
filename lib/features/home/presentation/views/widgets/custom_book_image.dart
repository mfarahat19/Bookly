import 'package:bookly/config/routes.dart';
import 'package:bookly/features/home/data/models/Book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRoutes.bookDetailsRoute,
          extra: book,
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 2.6 / 4,
          child: CachedNetworkImage(
            imageUrl: book.volumeInfo?.imageLinks?.thumbnail??'',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
