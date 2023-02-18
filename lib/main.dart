import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kids_games/Screens/EasyGameScreen/view/EasyGamePage.dart';
import 'package:kids_games/Screens/HardGameScreen/view/HardGamePage.dart';
import 'package:kids_games/Screens/HomeScreen/view/HomePage.dart';
import 'package:kids_games/Screens/MediumGameScreen/view/MediumGamePage.dart';
import 'package:kids_games/Screens/SplashScreen/view/SplashPage.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => SplashPage(),
            'Home': (context) => HomePage(),
            'Easy': (context) => EasyGamePage(),
            'Medium': (context) => MediumGamePage(),
            'Hard': (context) => HardGamePage(),
          },
        );
      },
    ),
  );
}
