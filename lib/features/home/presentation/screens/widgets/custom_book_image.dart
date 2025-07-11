import 'package:bookly/core/utils/costants.dart';
import 'package:bookly/features/home/data/models/Book_model.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key,required this.imageUrl});
 final  String imageUrl ;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Image.network(
        imageUrl,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
