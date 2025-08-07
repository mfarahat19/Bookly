import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key,
      required this.text,
      required this.color,
      required this.isLeft,
      required this.onTap});

  final String text;
  final bool isLeft;
  final Color color;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        fixedSize: Size(170, 40),
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: isLeft
              ? const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                )
              : const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
        ),
      ),
      child: Text(
        text,
        style: style18().copyWith(
          color: isLeft ? Colors.black : Colors.white,
        ),
      ),
    );
  }
}
