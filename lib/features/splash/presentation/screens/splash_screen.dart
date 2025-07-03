import 'package:bookly/features/splash/presentation/screens/widgets/splash_body.dart';
import 'package:flutter/material.dart';
import 'widgets/navigate_to_home.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        SplashBody()
      ],
    );
  }
}
