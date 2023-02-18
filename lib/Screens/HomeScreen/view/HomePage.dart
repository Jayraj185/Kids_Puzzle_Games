import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kids_games/Screens/HomeScreen/controller/HomeController.dart';
import 'package:sizer/sizer.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  HomeController homeController = Get.put(HomeController());
  AnimationController? animationController;
  Animation? AlignAnimation;
  Animation? AlignAnimation2;
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: [SystemUiOverlay.bottom]);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    animationController = AnimationController(vsync: this,duration: Duration(milliseconds: 600))..forward();
    AlignAnimation = Tween<double>(begin: 9.0,end: 0.0).animate(animationController!);
    AlignAnimation2 = Tween<double>(begin: -3.0,end: -1.0).animate(animationController!);
    AlignAnimation!.addListener(() {
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Stack(
          children: [
            Container(
              height: Get.height,
              width: Get.width,
              child: Image.asset("assets/image/fair.png",fit: BoxFit.fill,),
            ),
            Align(
              alignment: Alignment(0,AlignAnimation2!.value),
              child: Container(
                height: Get.height/3,
                child: Image.asset("assets/image/balloon.png",fit: BoxFit.fill,),
              ),
            ),
            Align(
              alignment: Alignment(0,AlignAnimation!.value),
              child: Container(
                height: Get.height/1.15,
                width: Get.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: Get.height/1.8,
                        width: Get.width/5,
                        //margin: EdgeInsets.only(top: Get.height/2.5),
                        child: Lottie.asset("assets/animation/tiger.json"),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        print("Easy");
                        // print(homeController.EasyLevelList[0].DraggebleList!.length);
                        Get.toNamed('Easy');
                      },
                      child: Container(
                          height: Get.height/6,
                          width: Get.width/5,
                          margin: EdgeInsets.only(top: Get.height/1.5),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    // Colors.greenAccent.shade100,
                                    // Colors.greenAccent.shade200,
                                    Color(0xFFDBDC48),
                                    Color(0xFF9DBD00),
                                    Color(0xFF7CA702),
                                    // Colors.greenAccent.shade700,
                                  ]
                              ),
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Color(0xFF7CA702),width: 2)
                          ),
                          alignment: Alignment.center,
                          child: Container(
                            height: Get.height/7.6,
                            width: Get.width/5.5,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color(0xFFDBDC48),
                                    Color(0xFF9DBD00),
                                  ]
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.play_arrow_outlined,color: Colors.white,size: 38.sp,),
                                Text(
                                  "Easy",
                                  style: GoogleFonts.caveatBrush(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.sp,
                                      shadows: [
                                        Shadow(color: Colors.black,offset: Offset(0,0),blurRadius: 3)
                                      ],
                                  ),
                                )
                              ],
                            ),
                          )
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Get.toNamed('Medium');
                      },
                      child: Container(
                          height: Get.height/6,
                          width: Get.width/4,
                          margin: EdgeInsets.only(top: Get.height/1.5),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    // Colors.greenAccent.shade100,
                                    // Colors.greenAccent.shade200,
                                    Color(0xFFDBDC48),
                                    Color(0xFF9DBD00),
                                    Color(0xFF7CA702),
                                    // Colors.greenAccent.shade700,
                                  ]
                              ),
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Color(0xFF7CA702),width: 2)
                          ),
                          alignment: Alignment.center,
                          child: Container(
                            height: Get.height/7.6,
                            width: Get.width/4.3,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color(0xFFDBDC48),
                                    Color(0xFF9DBD00),
                                    // Color(0xFF7CA702),
                                  ]
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.play_arrow_outlined,color: Colors.white,size: 38.sp,),
                                Text(
                                  "Medium",
                                  style: GoogleFonts.caveatBrush(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.sp,
                                      shadows: [
                                      Shadow(color: Colors.black,offset: Offset(0,0),blurRadius: 3)
                                  ],
                                  ),
                                )
                              ],
                            ),
                          )
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Get.toNamed('Hard');
                      },
                      child: Container(
                          height: Get.height/6,
                          width: Get.width/5,
                          margin: EdgeInsets.only(top: Get.height/1.5),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    // Colors.greenAccent.shade100,
                                    // Colors.greenAccent.shade200,
                                    Color(0xFFDBDC48),
                                    Color(0xFF9DBD00),
                                    Color(0xFF7CA702),
                                    // Colors.greenAccent.shade700,
                                  ]
                              ),
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Color(0xFF7CA702),width: 2)
                          ),
                          alignment: Alignment.center,
                          child: Container(
                            height: Get.height/7.6,
                            width: Get.width/5.5,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color(0xFFDBDC48),
                                    Color(0xFF9DBD00),
                                    // Color(0xFF7CA702),
                                  ]
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.play_arrow_outlined,color: Colors.white,size: 38.sp,),
                                Text(
                                  "Hard",
                                  style: GoogleFonts.caveatBrush(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.sp,
                                    shadows: [
                                      Shadow(color: Colors.black,offset: Offset(0,0),blurRadius: 3)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
