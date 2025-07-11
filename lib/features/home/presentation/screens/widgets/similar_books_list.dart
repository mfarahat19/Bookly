import 'package:bookly/core/utils/extensios.dart';
import 'package:bookly/features/home/presentation/screens/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksList extends StatelessWidget {
  const SimilarBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: context.screenHeight * .15,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CustomBookImage(imageUrl: 'rg'),
        ),
        itemCount: 20,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
