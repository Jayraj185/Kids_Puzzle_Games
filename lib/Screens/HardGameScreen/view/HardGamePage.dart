import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kids_games/Screens/HomeScreen/controller/HomeController.dart';
import 'package:kids_games/Screens/HomeScreen/model/HomeModel.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class HardGamePage extends StatefulWidget {
  const HardGamePage({Key? key}) : super(key: key);

  @override
  State<HardGamePage> createState() => _HardGamePageState();
}

class _HardGamePageState extends State<HardGamePage> with TickerProviderStateMixin{
  HomeController homeController = Get.put(HomeController());
  AnimationController? animationController;
  AnimationController? animationController2;
  Animation? AlignAnimation;
  Animation? AlignAnimation2;
  Animation? AlignAnimation3;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this,duration: Duration(milliseconds: 1200))..forward();
    animationController2 = AnimationController(vsync: this,duration: Duration(milliseconds: 1200))..forward();
    AlignAnimation = Tween<double>(begin: -4.0,end: -1.0).animate(animationController!);
    AlignAnimation2 = Tween<double>(begin: 2.0,end: 1.0).animate(animationController!);
    AlignAnimation3 = Tween<double>(begin: 4.0,end: 0.0).animate(animationController2!);
    AlignAnimation!.addListener(() {
      setState(() {

      });
    });
    print(AlignAnimation!.value);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            child: Image.asset("assets/image/HardBackground2.jpg",fit: BoxFit.fill,),
          ),
          Align(
            alignment: Alignment(AlignAnimation!.value, -1),
            child: InkWell(
              onTap: () {
                Get.offAllNamed('Home');
              },
              child: Container(
                height: Get.height / 7,
                width: Get.height / 7,
                decoration: BoxDecoration(
                    color: Colors.deepOrange.shade700,
                    borderRadius: BorderRadius.circular(15)),
                margin:
                EdgeInsets.only(left: Get.width / 90, top: Get.height / 40),
                alignment: Alignment.center,
                child: Container(
                  height: Get.height / 9,
                  width: Get.height / 9,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange.shade600,
                      borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.center,
                  // padding: EdgeInsets.only(left: Get.width / 90),
                  child: Icon(
                    Icons.home,
                    color: Colors.amber.shade300,
                    size: 25.sp,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(AlignAnimation2!.value,1),
            child: InkWell(
              onTap: () {
                homeController.htotal.value=0;
                homeController.hind.value=0;
                homeController.hwin.value = false;
                for(int j=0; j<homeController.HardLevelList.length; j++)
                  {
                    for(int i=0; i<homeController.HardLevelList[j].DragTargetList!.length; i++)
                    {
                      homeController.HardLevelList[j].DragTargetList![i] = HomeModel(isAccept: false,image: homeController.HardLevelList[j].DragTargetList![i].image,key: homeController.HardLevelList[j].DragTargetList![i].key);
                      homeController.HardLevelList[j].DraggebleList![i] = HomeModel(isAccept: false,image: homeController.HardLevelList[j].DraggebleList![i].image,key: homeController.HardLevelList[j].DraggebleList![i].key);
                    }
                  }
                homeController.HardLevelList[homeController.hind.value] = HomeModel2(DraggebleList: homeController.HardLevelList[homeController.hind.value].DraggebleList,DragTargetList: homeController.HardLevelList[homeController.hind.value].DragTargetList);
                animationController2!.forward();
              },
              child: Container(
                height: Get.height / 7,
                width: Get.height / 7,
                decoration: BoxDecoration(
                    color: Colors.deepOrange.shade700,
                    borderRadius: BorderRadius.circular(15)),
                margin: EdgeInsets.only(right: Get.width / 90, bottom: Get.height / 4.1),
                alignment: Alignment.center,
                child: Container(
                  height: Get.height / 9,
                  width: Get.height / 9,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange.shade600,
                      borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.refresh,
                    color: Colors.amber.shade300,
                    size: 21.sp,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(AlignAnimation2!.value,1),
            child: InkWell(
              onTap: () {
                print("${Get.width}   ${Get.width/9}  ${Get.height/4.043}");
                homeController.htotal.value=0;
                if(homeController.hind.value>0)
                {
                  homeController.hind.value--;
                  animationController2!.forward();
                }
              },
              child: Container(
                height: Get.height / 7,
                width: Get.height / 7,
                decoration: BoxDecoration(
                    color: Colors.deepOrange.shade700,
                    borderRadius: BorderRadius.circular(15)),
                margin:
                EdgeInsets.only(right: Get.width / 9, bottom: Get.height / 40),
                alignment: Alignment.center,
                child: Container(
                  height: Get.height / 9,
                  width: Get.height / 9,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange.shade600,
                      borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: Get.width/90),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.amber.shade300,
                    size: 21.sp,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(AlignAnimation2!.value,1),
            child: InkWell(
              onTap: () {
                homeController.htotal.value=0;
                if(homeController.hind.value<5)
                {
                  homeController.hind.value++;
                  // AlignAnimation3!.status.i;
                  print("Start == ${AlignAnimation3!.value}");
                  animationController2!.forward();
                  print("End == ${AlignAnimation3!.value}");
                }
                //Get.back();
              },
              child: Container(
                height: Get.height / 7,
                width: Get.height / 7,
                decoration: BoxDecoration(
                    color: Colors.deepOrange.shade700,
                    borderRadius: BorderRadius.circular(15)),
                margin: EdgeInsets.only(
                    right: Get.width / 90, bottom: Get.height / 40),
                alignment: Alignment.center,
                child: Container(
                  height: Get.height / 9,
                  width: Get.height / 9,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange.shade600,
                      borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: Get.width / 150),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.amber.shade300,
                    size: 21.sp,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0,AlignAnimation!.value),
            child: Container(
              height: Get.height / 7,
              width: Get.width / 4,
              margin: EdgeInsets.only(top: Get.height / 40),
              decoration: BoxDecoration(
                  color: Colors.deepOrange.shade700,
                  borderRadius: BorderRadius.circular(15)),
              alignment: Alignment.center,
              child: Container(
                height: Get.height / 9,
                width: Get.width / 4.3,
                decoration: BoxDecoration(
                    color: Colors.deepOrange.shade600,
                    borderRadius: BorderRadius.circular(10)),
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: Get.width / 150),
                child: Text(
                  "Fill This Images",
                  style: GoogleFonts.caveatBrush(
                      color: Colors.amber.shade300,
                      fontSize: 21.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(AlignAnimation2!.value,-1),
            child: Obx(
                  () => Container(
                height: Get.height / 7,
                width: Get.width / 6,
                margin:
                EdgeInsets.only(top: Get.height / 40, right: Get.width / 60),
                decoration: BoxDecoration(
                    color: Colors.deepOrange.shade700,
                    borderRadius: BorderRadius.circular(15)),
                alignment: Alignment.center,
                child: Container(
                  height: Get.height / 9,
                  width: Get.width / 6.6,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange.shade600,
                      borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: Get.width / 150),
                  child: Text(
                    "Level's  ${homeController.hind.value + 1}",
                    style: GoogleFonts.caveatBrush(
                        color: Colors.amber.shade300,
                        fontSize: 21.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0,AlignAnimation3!.value),
            child: Obx(
                  () => Container(
                  height: Get.height / 1.8,
                  width: Get.width / 1.3,
                  // color: Colors.black45,
                  alignment: Alignment.centerLeft,
                  child: ListView.builder(
                    itemCount: homeController.HardLevelList[homeController.hind.value].DragTargetList!.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      print(index);
                      return DragTarget(
                        builder: (context, candidateData, rejectedData) {
                          return Container(
                            height: Get.height / 1.9,
                            width: Get.width / 6,
                            margin: EdgeInsets.symmetric(horizontal: Get.width/100),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    color: Color(0xFF7CA702), width: 4)),
                            child: homeController.HardLevelList[homeController.hind.value].DragTargetList![index].isAccept == true
                                ? Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      height: Get.height/2,
                                      width: Get.height/2,
                                      // color: Colors.red,
                                      child: Lottie.asset("assets/animation/drag_success.json",fit: BoxFit.fill,reverse: false,repeat: false),
                                    ),
                                    Image.asset(
                                    "${homeController.HardLevelList[homeController.hind.value].DragTargetList![index].image}"),
                                  ],
                                )
                                : Image.asset(
                              "${homeController.HardLevelList[homeController.hind.value].DragTargetList![index].image}",
                              color: Colors.black12,
                            ),
                          );
                        },
                        onWillAccept: (data) {
                          print("ONWILLACCEPT  $data  $index");
                          return data == homeController.HardLevelList[homeController.hind.value].DragTargetList![index].key;
                        },
                        onAccept: (data) {
                          print("ONACCEPT  $data  $index");
                          homeController.HardLevelList[homeController.hind.value].DragTargetList![index] = HomeModel(isAccept: true,image: homeController.HardLevelList[homeController.hind.value].DragTargetList![index].image,key: homeController.HardLevelList[homeController.hind.value].DragTargetList![index].key);
                          homeController.HardLevelList[homeController.hind.value] = HomeModel2(DraggebleList: homeController.HardLevelList[homeController.hind.value].DraggebleList,DragTargetList: homeController.HardLevelList[homeController.hind.value].DragTargetList);
                          if(homeController.htotal.value==4)
                          {
                            homeController.htotal.value=0;
                          }
                        },
                      );
                    },
                  )
              ),
            ),
          ),
          Align(
            alignment: Alignment(0,AlignAnimation3!.value+1),
            child: Container(
              height: Get.height / 6,
              width: Get.width / 1.8,
              margin: EdgeInsets.only(bottom: Get.height / 40),
              decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.circular(15),),
              child: Obx(
                    () => ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: homeController.HardLevelList[homeController.hind.value].DraggebleList!.length,
                  itemBuilder: (context, index) => Draggable(
                    data: homeController.HardLevelList[homeController.hind.value].DraggebleList![index].key,
                    feedback: Container(
                      height: Get.height / 1.9,
                      width: Get.width / 7,
                      child: Image.asset("${homeController.HardLevelList[homeController.hind.value].DraggebleList![index].image}"),
                    ),
                    childWhenDragging: Container(),
                    onDragCompleted: () {
                      homeController.HardLevelList[homeController.hind.value].DraggebleList![index] = HomeModel(isAccept: true,image: homeController.HardLevelList[homeController.hind.value].DraggebleList![index].image,key: homeController.HardLevelList[homeController.hind.value].DraggebleList![index].key);
                      homeController.HardLevelList[homeController.hind.value] = HomeModel2(DraggebleList: homeController.HardLevelList[homeController.hind.value].DraggebleList,DragTargetList: homeController.HardLevelList[homeController.hind.value].DragTargetList);
                      homeController.htotal.value++;
                      if(homeController.htotal.value==4)
                      {
                        homeController.htotal.value=0;
                        if(homeController.hind.value<5)
                        {
                          Timer(Duration(milliseconds: 600), () {
                            homeController.hind.value++;
                          });
                        }
                        else if(homeController.hind.value==5)
                        {
                          homeController.hwin.value = true;
                          Timer(Duration(milliseconds: 3500), () {
                            Get.back();
                            homeController.hwin.value = false;
                            homeController.hind.value=0;
                            for(int j=0; j<homeController.HardLevelList.length; j++)//0<5
                                {
                              for(int i=0; i<homeController.HardLevelList[j].DragTargetList!.length; i++)//0<4
                                  {
                                homeController.HardLevelList[j].DragTargetList![i] = HomeModel(isAccept: false,image: homeController.HardLevelList[j].DragTargetList![i].image,key: homeController.HardLevelList[j].DragTargetList![i].key);
                                //0,0=
                                homeController.HardLevelList[j].DraggebleList![i] = HomeModel(isAccept: false,image: homeController.HardLevelList[j].DraggebleList![i].image,key: homeController.HardLevelList[j].DraggebleList![i].key);
                              }
                            }
                            homeController.HardLevelList[homeController.hind.value] = HomeModel2(DraggebleList: homeController.HardLevelList[homeController.hind.value].DraggebleList,DragTargetList: homeController.HardLevelList[homeController.hind.value].DragTargetList);
                          });
                        }
                      }
                    },
                    child: homeController.HardLevelList[homeController.hind.value].DraggebleList![index].isAccept == false
                        ? Container(
                      height: Get.height / 7,
                      width: Get.height / 7,
                      margin: EdgeInsets.symmetric(horizontal: Get.width/27),
                      child: Image.asset(
                          "${homeController.HardLevelList[homeController.hind.value].DraggebleList![index].image}"),
                    )
                        : Container(),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(AlignAnimation!.value,1),
            child: Container(
              height: Get.height / 1.9,
              width: Get.width / 5,
              child: Lottie.asset("assets/animation/tiger.json"),
            ),
          ),
          Align(
            alignment: Alignment(AlignAnimation2!.value-0.15,-1.1),
            child: Transform.rotate(
              angle: pi/-6,
              child: Lottie.asset(
                "assets/animation/butterfly.json",
                height: Get.height/1.9,
                width: Get.width/5,
              ),
            ),
          ),
          Obx(() => homeController.hwin.value?Align(
            alignment: Alignment.center,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Lottie.asset("assets/animation/win1.json"),
                Lottie.asset("assets/animation/win2.json"),
              ],
            ),
          ):Container())
        ],
      ),
    );
  }
}
