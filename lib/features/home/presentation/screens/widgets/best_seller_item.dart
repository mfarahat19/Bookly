import 'package:bookly/core/utils/costants.dart';
import 'package:bookly/core/utils/extensios.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/screens/rating_widget.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: context.screenHeight * .15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(AppCostants.testImage),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                width: context.screenWidth * .5,
                child: Text(
                  'Mohamed Ahmed Mohamed Farahat',
                  maxLines: 2,
                  overflow: TextOverflow.clip,
                  style: style20(),
                ),
              ),
              Text(
                'J.K.Rowing',
                style: style13(),
              ),
              Row(
                children: [
                  Text(
                    '19.99 EG',
                    style: style18().copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  RatingWidget(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
