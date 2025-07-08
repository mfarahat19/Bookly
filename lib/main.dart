import 'package:bookly/config/router_manager.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RouterManager.router,
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}
