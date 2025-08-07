import 'package:bookly/config/routes.dart';
import 'package:bookly/core/utils/costants.dart';
import 'package:bookly/core/utils/extensios.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/Book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/rating_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewestBookItem extends StatelessWidget {
  const NewestBookItem({super.key, required this.book});
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
      child: Row(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 8),
            height: context.screenHeight * .17,
            width: context.screenWidth * .23,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: book.volumeInfo?.imageLinks?.thumbnail ??
                    AppCostants.defaultNetworkImage,
              ),
            ),
          ),
          Expanded(
            child: Column(
              spacing: 4,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  width: context.screenWidth * .5,
                  child: Text(
                    book.volumeInfo?.title ?? 'No Title',
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                    style: style20(),
                  ),
                ),
                Text(
                  (book.volumeInfo?.authors != null &&
                          book.volumeInfo!.authors!.isNotEmpty)
                      ? book.volumeInfo!.authors!.first
                      : 'No Author',
                  style: style13(),
                ),
                Row(
                  children: [
                    Text(
                      'Free',
                      style: style18().copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    RatingWidget(
                      rating: book.volumeInfo?.averageRating ?? 0,
                      count: book.volumeInfo?.ratingCount ?? 0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
