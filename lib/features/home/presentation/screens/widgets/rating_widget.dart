import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        const Icon(FontAwesomeIcons.solidStar,color: Colors.amber,),
        Text(
          '(445)',
          style: style13(),
        ),
      ],
    );
  }
}
