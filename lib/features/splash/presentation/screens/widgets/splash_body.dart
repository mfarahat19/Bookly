import 'package:bookly/core/utils/costants.dart';
import 'package:bookly/core/utils/extensios.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset(
          'assets/jsons/book.json',
          animate: true,
          height: context.screenHeight*.3,
        ),
      ],
    );
  }
}
