import 'package:bookly/core/utils/extensios.dart';
import 'package:bookly/features/home/presentation/screens/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookListWidget extends StatelessWidget {
  const BookListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight * 0.3,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: const CustomBookImage(),
        ),
        itemCount: 8,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
