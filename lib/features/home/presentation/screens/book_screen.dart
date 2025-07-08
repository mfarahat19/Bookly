import 'package:bookly/features/home/presentation/screens/widgets/custom_book_bar.dart';
import 'package:flutter/material.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CustomBookBar()

        ],
      ),
    );
  }
}
