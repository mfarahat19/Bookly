import 'package:bookly/config/routes.dart';
import 'package:bookly/core/utils/costants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

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
              GoRouter.of(context).push(AppRoutes.searchRoute);
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
