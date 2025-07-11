import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingAnamitedWidget extends StatelessWidget {
  const LoadingAnamitedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.threeRotatingDots(
        color: Colors.white,
        size: 50,
      ),
    );
  }
}
