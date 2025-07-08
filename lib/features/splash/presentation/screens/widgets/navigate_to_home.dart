import 'package:bookly/config/router_manager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

navigateToHome(BuildContext context) {
  Future.delayed(const Duration(seconds: 2), () {
GoRouter.of(context).push(RouterManager.homeRoute);
  });
}

