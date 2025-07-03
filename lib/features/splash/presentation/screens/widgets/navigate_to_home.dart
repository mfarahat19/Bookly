import 'package:bookly/features/home/presentation/screens/home_screen.dart';
import 'package:get/get.dart';

navigateToHome() {
  Future.delayed(const Duration(seconds: 2), () {
    Get.to(
          () => const HomeScreen(),
      transition: Transition.fade,
    );
  });
}

