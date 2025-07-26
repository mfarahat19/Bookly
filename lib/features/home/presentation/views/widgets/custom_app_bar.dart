import 'package:bookly/core/utils/costants.dart';
import 'package:bookly/core/utils/servicers_locator.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/search/presentation/view%20model/search_book_cubit/Search_books_cubit.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Row(
        children: [
          Image.asset(
            AppCostants.logo,
            height: 20,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: search(),
              );
              //GoRouter.of(context).push(AppRoutes.searchRoute);
            },
            icon: FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
