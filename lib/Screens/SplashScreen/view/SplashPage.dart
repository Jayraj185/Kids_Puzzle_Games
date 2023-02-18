import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: [SystemUiOverlay.bottom]);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    Timer(Duration(seconds: 4), () {
      Get.offAllNamed('Home');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: Get.height/2.1,
                width: Get.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset("assets/animation/splash.json"),
                    SizedBox(width: Get.width/9,),
                    Transform.rotate(
                        angle: pi/-6,
                        child: Lottie.asset("assets/animation/butterfly.json"),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: Get.height/9),
                child: Container(
                  height: Get.height/6,
                  width: Get.height/6,
                  alignment: Alignment.center,
                  child: Lottie.asset("assets/animation/animation_loading.json"),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: Get.height/13),
                child: Text(
                  "From",
                  style: GoogleFonts.caveatBrush(
                    fontSize: 15.sp,
                    color: Colors.grey
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: Get.height/60),
                child: Text(
                  "Jayraj",
                  style: GoogleFonts.caveatBrush(
                      fontSize: 21.sp,
                      color: Colors.deepOrange.shade600
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
