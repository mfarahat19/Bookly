import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/splash/presentation/screens/splash_screen.dart';
void main(){
  runApp(const  Bookly());
}
class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}