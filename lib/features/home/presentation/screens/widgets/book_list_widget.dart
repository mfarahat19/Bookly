import 'package:bookly/core/utils/extensios.dart';
import 'package:bookly/features/home/presentation/screens/widgets/book_item.dart';
import 'package:flutter/material.dart';

class BookListWidget extends StatelessWidget {
  const BookListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16),
      height: context.screenHeight * 0.3,
      child: ListView.builder(
        itemBuilder: (context, index) => BookItem(),
        itemCount: 8,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
