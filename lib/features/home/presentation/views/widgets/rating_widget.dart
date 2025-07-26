import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key,required this.rating,required this.count});
  final num rating;
  final num count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 10,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 20,
        ),
        Text(
          "$rating",
          style: style13(),
        ),
        Text(
         "$count",
          style: style13(),
        ),
      ],
    );
  }
}
