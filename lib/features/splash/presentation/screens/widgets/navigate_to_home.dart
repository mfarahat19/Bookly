import 'package:bookly/config/router_manager.dart';
import 'package:bookly/config/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

navigateToHome(BuildContext context) {
  Future.delayed(const Duration(seconds: 3), () {
    GoRouter.of(context).go(AppRoutes.homeRoute);
  });
}
