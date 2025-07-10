import 'package:bookly/config/routes.dart';
import 'package:bookly/features/home/presentation/screens/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchList extends StatelessWidget {
  const SearchList({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.bookDetailsRoute);
      },
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        // physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(left: 16),
        itemBuilder: (context, index) => BestSellerItem(),
        itemCount: 30,
      ),
    );
  }
}
