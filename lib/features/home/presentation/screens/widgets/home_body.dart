import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/screens/widgets/best_seller_list.dart';
import 'package:bookly/features/home/presentation/screens/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/screens/widgets/book_featured_listview.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomAppBar(),
                BookListWidget(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      'Best Seller',
                      style: style20(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: BestSellerList(),
            ),
          )
        ],
      ),
    );
  }
}
