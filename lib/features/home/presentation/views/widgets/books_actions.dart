import 'package:bookly/core/utils/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ButtonWidget(text: "Free", color: Colors.white, isLeft: true),
        ButtonWidget(text: "Preview", color: Colors.orange, isLeft: false),
      ],
    );
  }
}
