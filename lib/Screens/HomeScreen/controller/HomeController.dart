import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:kids_games/Screens/HomeScreen/model/HomeModel.dart';

class HomeController extends GetxController {
  // RxList Number_Image = [
  //   "assets/image/num6.png",
  //   "assets/image/num5.png",
  //   "assets/image/num3.png",
  //   "assets/image/num9.png",
  // ].obs;
  // RxList Level = [
  //   HomeModel(image: "assets/image/num3.png", key: "3", isAccept: false),
  //   HomeModel(image: "assets/image/num9.png", key: "9", isAccept: false),
  //   HomeModel(image: "assets/image/num6.png", key: "6", isAccept: false),
  //   HomeModel(image: "assets/image/num5.png", key: "5", isAccept: false),
  // ].obs;
  // RxList level2 = [
  //   HomeModel(image: "assets/image/num5.png", key: "5", isAccept: false),
  //   HomeModel(image: "assets/image/num6.png", key: "6", isAccept: false),
  //   HomeModel(image: "assets/image/num3.png", key: "3", isAccept: false),
  //   HomeModel(image: "assets/image/num9.png", key: "9", isAccept: false),
  // ].obs;
  RxInt eind = 0.obs;
  RxInt mind = 0.obs;
  RxInt hind = 0.obs;
  RxInt etotal = 0.obs;
  RxInt mtotal = 0.obs;
  RxInt htotal = 0.obs;
  RxList<HomeModel2> EasyLevelList = <HomeModel2>[
    HomeModel2(
      DraggebleList: [
        HomeModel(image: "assets/image/num5.png", key: "5", isAccept: false),
        HomeModel(image: "assets/image/num6.png", key: "6", isAccept: false),
        HomeModel(image: "assets/image/num3.png", key: "3", isAccept: false),
        HomeModel(image: "assets/image/num9.png", key: "9", isAccept: false),
      ],
      DragTargetList: [
        HomeModel(image: "assets/image/num3.png", key: "3", isAccept: false),
        HomeModel(image: "assets/image/num9.png", key: "9", isAccept: false),
        HomeModel(image: "assets/image/num6.png", key: "6", isAccept: false),
        HomeModel(image: "assets/image/num5.png", key: "5", isAccept: false),
      ]
    ),
    HomeModel2(
      DraggebleList: [
        HomeModel(image: "assets/image/k.png", key: "k", isAccept: false),
        HomeModel(image: "assets/image/a.png", key: "a", isAccept: false),
        HomeModel(image: "assets/image/y.png", key: "y", isAccept: false),
        HomeModel(image: "assets/image/j.png", key: "j", isAccept: false),
      ],
      DragTargetList: [
        HomeModel(image: "assets/image/j.png", key: "j", isAccept: false),
        HomeModel(image: "assets/image/a.png", key: "a", isAccept: false),
        HomeModel(image: "assets/image/y.png", key: "y", isAccept: false),
        HomeModel(image: "assets/image/k.png", key: "k", isAccept: false),
      ]
    ),
    HomeModel2(
      DraggebleList: [
        HomeModel(image: "assets/image/apple.png", key: "a", isAccept: false),
        HomeModel(image: "assets/image/kiwi.png", key: "k", isAccept: false),
        HomeModel(image: "assets/image/watermelon.png", key: "w", isAccept: false),
        HomeModel(image: "assets/image/orange.png", key: "o", isAccept: false),
      ],
      DragTargetList: [
        HomeModel(image: "assets/image/watermelon.png", key: "w", isAccept: false),
        HomeModel(image: "assets/image/orange.png", key: "o", isAccept: false),
        HomeModel(image: "assets/image/apple.png", key: "a", isAccept: false),
        HomeModel(image: "assets/image/kiwi.png", key: "k", isAccept: false),
      ]
    ),
    HomeModel2(
        DraggebleList: [
          HomeModel(image: "assets/image/dove.png", key: "d", isAccept: false),
          HomeModel(image: "assets/image/parote.png", key: "p", isAccept: false),
          HomeModel(image: "assets/image/pickok.png", key: "pi", isAccept: false),
          HomeModel(image: "assets/image/cakki.png", key: "c", isAccept: false),
        ],
        DragTargetList: [
          HomeModel(image: "assets/image/parote.png", key: "p", isAccept: false),
          HomeModel(image: "assets/image/pickok.png", key: "pi", isAccept: false),
          HomeModel(image: "assets/image/dove.png", key: "d", isAccept: false),
          HomeModel(image: "assets/image/cakki.png", key: "c", isAccept: false),
        ]
    ),
    HomeModel2(
        DraggebleList: [
          HomeModel(image: "assets/image/lion.png", key: "l", isAccept: false),
          HomeModel(image: "assets/image/tiger.png", key: "t", isAccept: false),
          HomeModel(image: "assets/image/wolf.png", key: "w", isAccept: false),
          HomeModel(image: "assets/image/elephant.png", key: "e", isAccept: false),
        ],
        DragTargetList: [
          HomeModel(image: "assets/image/wolf.png", key: "w", isAccept: false),
          HomeModel(image: "assets/image/tiger.png", key: "t", isAccept: false),
          HomeModel(image: "assets/image/elephant.png", key: "e", isAccept: false),
          HomeModel(image: "assets/image/lion.png", key: "l", isAccept: false),
        ]
    ),
    HomeModel2(
        DraggebleList: [
          HomeModel(image: "assets/image/football.png", key: "f", isAccept: false),
          HomeModel(image: "assets/image/hocky.png", key: "h", isAccept: false),
          HomeModel(image: "assets/image/cricket.png", key: "c", isAccept: false),
          HomeModel(image: "assets/image/baseball.png", key: "b", isAccept: false),
        ],
        DragTargetList: [
          HomeModel(image: "assets/image/cricket.png", key: "c", isAccept: false),
          HomeModel(image: "assets/image/hocky.png", key: "h", isAccept: false),
          HomeModel(image: "assets/image/football.png", key: "f", isAccept: false),
          HomeModel(image: "assets/image/baseball.png", key: "b", isAccept: false),
        ]
    ),
  ].obs;

  RxList<HomeModel2> MediumLevelList = <HomeModel2>[
    HomeModel2(
        DraggebleList: [
          HomeModel(image: "assets/image/mickey3.png", key: "3", isAccept: false),
          HomeModel(image: "assets/image/mickey4.png", key: "4", isAccept: false),
          HomeModel(image: "assets/image/mickey2.png", key: "2", isAccept: false),
          HomeModel(image: "assets/image/mickey1.png", key: "1", isAccept: false),
        ],
        DragTargetList: [
          HomeModel(image: "assets/image/mickey1.png", key: "1", isAccept: false),
          HomeModel(image: "assets/image/mickey2.png", key: "2", isAccept: false),
          HomeModel(image: "assets/image/mickey3.png", key: "3", isAccept: false),
          HomeModel(image: "assets/image/mickey4.png", key: "4", isAccept: false),
        ]
    ),
    HomeModel2(
        DraggebleList: [
          HomeModel(image: "assets/image/csk.png", key: "c", isAccept: false),
          HomeModel(image: "assets/image/mi.png", key: "m", isAccept: false),
          HomeModel(image: "assets/image/rcb.png", key: "r", isAccept: false),
          HomeModel(image: "assets/image/gt.png", key: "g", isAccept: false),

        ],
        DragTargetList: [
          HomeModel(image: "assets/image/rcb.png", key: "r", isAccept: false),
          HomeModel(image: "assets/image/gt.png", key: "g", isAccept: false),
          HomeModel(image: "assets/image/mi.png", key: "m", isAccept: false),
          HomeModel(image: "assets/image/csk.png", key: "c", isAccept: false),
        ]
    ),
    HomeModel2(
        DraggebleList: [
          HomeModel(image: "assets/image/bently.png", key: "b", isAccept: false),
          HomeModel(image: "assets/image/rolls_royce.png", key: "r", isAccept: false),
          HomeModel(image: "assets/image/thar.png", key: "t", isAccept: false),
          HomeModel(image: "assets/image/farari.png", key: "f", isAccept: false),
        ],
        DragTargetList: [
          HomeModel(image: "assets/image/thar.png", key: "t", isAccept: false),
          HomeModel(image: "assets/image/farari.png", key: "f", isAccept: false),
          HomeModel(image: "assets/image/bently.png", key: "b", isAccept: false),
          HomeModel(image: "assets/image/rolls_royce.png", key: "r", isAccept: false),
        ]
    ),
    HomeModel2(
        DraggebleList: [
          HomeModel(image: "assets/image/candy.png", key: "ca", isAccept: false),
          HomeModel(image: "assets/image/cute.png", key: "cu", isAccept: false),
          HomeModel(image: "assets/image/lolipop.png", key: "lo", isAccept: false),
          HomeModel(image: "assets/image/christmas_candy.png", key: "ch", isAccept: false),
        ],
        DragTargetList: [
          HomeModel(image: "assets/image/lolipop.png", key: "lo", isAccept: false),
          HomeModel(image: "assets/image/cute.png", key: "cu", isAccept: false),
          HomeModel(image: "assets/image/christmas_candy.png", key: "ch", isAccept: false),
          HomeModel(image: "assets/image/candy.png", key: "ca", isAccept: false),
        ]
    ),
    HomeModel2(
        DraggebleList: [
          HomeModel(image: "assets/image/lion_toys.png", key: "li", isAccept: false),
          HomeModel(image: "assets/image/doggy.png", key: "do", isAccept: false),
          HomeModel(image: "assets/image/tady.png", key: "ta", isAccept: false),
          HomeModel(image: "assets/image/lotso.png", key: "lo", isAccept: false),
        ],
        DragTargetList: [
          HomeModel(image: "assets/image/doggy.png", key: "do", isAccept: false),
          HomeModel(image: "assets/image/tady.png", key: "ta", isAccept: false),
          HomeModel(image: "assets/image/lion_toys.png", key: "li", isAccept: false),
          HomeModel(image: "assets/image/lotso.png", key: "lo", isAccept: false),
        ]
    ),
    HomeModel2(
        DraggebleList: [
          HomeModel(image: "assets/image/piglet.png", key: "pi", isAccept: false),
          HomeModel(image: "assets/image/doncky.png", key: "do", isAccept: false),
          HomeModel(image: "assets/image/pooh.png", key: "po", isAccept: false),
          HomeModel(image: "assets/image/tiger_train.png", key: "ti", isAccept: false),
        ],
        DragTargetList: [
          HomeModel(image: "assets/image/pooh.png", key: "po", isAccept: false),
          HomeModel(image: "assets/image/piglet.png", key: "pi", isAccept: false),
          HomeModel(image: "assets/image/tiger_train.png", key: "ti", isAccept: false),
          HomeModel(image: "assets/image/doncky.png", key: "do", isAccept: false),
        ]
    ),
  ].obs;

  RxList<HomeModel2> HardLevelList = <HomeModel2>[
    HomeModel2(
        DraggebleList: [
          HomeModel(image: "assets/image/ghost3.png", key: "3", isAccept: false),
          HomeModel(image: "assets/image/ghost4.png", key: "4", isAccept: false),
          HomeModel(image: "assets/image/ghost1.png", key: "1", isAccept: false),
          HomeModel(image: "assets/image/ghost2.png", key: "2", isAccept: false),
        ],
        DragTargetList: [
          HomeModel(image: "assets/image/ghost1.png", key: "1", isAccept: false),
          HomeModel(image: "assets/image/ghost2.png", key: "2", isAccept: false),
          HomeModel(image: "assets/image/ghost3.png", key: "3", isAccept: false),
          HomeModel(image: "assets/image/ghost4.png", key: "4", isAccept: false),
        ]
    ),
    HomeModel2(
        DraggebleList: [
          HomeModel(image: "assets/image/kaju_katli.png", key: "ka", isAccept: false),
          HomeModel(image: "assets/image/laddu.png", key: "la", isAccept: false),
          HomeModel(image: "assets/image/ras_gulla.png", key: "ra", isAccept: false),
          HomeModel(image: "assets/image/khoprapak.png", key: "kh", isAccept: false),
        ],
        DragTargetList: [
          HomeModel(image: "assets/image/khoprapak.png", key: "kh", isAccept: false),
          HomeModel(image: "assets/image/kaju_katli.png", key: "ka", isAccept: false),
          HomeModel(image: "assets/image/ras_gulla.png", key: "ra", isAccept: false),
          HomeModel(image: "assets/image/laddu.png", key: "la", isAccept: false),
        ]
    ),
    HomeModel2(
        DraggebleList: [
          HomeModel(image: "assets/image/chicken_nuggets.png", key: "ch", isAccept: false),
          HomeModel(image: "assets/image/burger.png", key: "bu", isAccept: false),
          HomeModel(image: "assets/image/pizza.png", key: "pi", isAccept: false),
          HomeModel(image: "assets/image/noodles.png", key: "no", isAccept: false),
        ],
        DragTargetList: [
          HomeModel(image: "assets/image/pizza.png", key: "pi", isAccept: false),
          HomeModel(image: "assets/image/noodles.png", key: "no", isAccept: false),
          HomeModel(image: "assets/image/chicken_nuggets.png", key: "ch", isAccept: false),
          HomeModel(image: "assets/image/burger.png", key: "bu", isAccept: false),
        ]
    ),
    HomeModel2(
        DraggebleList: [
          HomeModel(image: "assets/image/train.png", key: "tra", isAccept: false),
          HomeModel(image: "assets/image/jcb.png", key: "jc", isAccept: false),
          HomeModel(image: "assets/image/toys1.png", key: "to", isAccept: false),
          HomeModel(image: "assets/image/tractor.png", key: "tr", isAccept: false),
        ],
        DragTargetList: [
          HomeModel(image: "assets/image/jcb.png", key: "jc", isAccept: false),
          HomeModel(image: "assets/image/tractor.png", key: "tr", isAccept: false),
          HomeModel(image: "assets/image/train.png", key: "tra", isAccept: false),
          HomeModel(image: "assets/image/toys1.png", key: "to", isAccept: false),
        ]
    ),
    HomeModel2(
        DraggebleList: [
          HomeModel(image: "assets/image/oppo_reno8.png", key: "op", isAccept: false),
          HomeModel(image: "assets/image/s23.png", key: "s2", isAccept: false),
          HomeModel(image: "assets/image/iphone.png", key: "ip", isAccept: false),
          HomeModel(image: "assets/image/xiaomi_redmi_note10s.png", key: "xi", isAccept: false),
        ],
        DragTargetList: [
          HomeModel(image: "assets/image/iphone.png", key: "ip", isAccept: false),
          HomeModel(image: "assets/image/xiaomi_redmi_note10s.png", key: "xi", isAccept: false),
          HomeModel(image: "assets/image/oppo_reno8.png", key: "op", isAccept: false),
          HomeModel(image: "assets/image/s23.png", key: "s2", isAccept: false),
        ]
    ),
    HomeModel2(
        DraggebleList: [
          HomeModel(image: "assets/image/bmw.png", key: "bm", isAccept: false),
          HomeModel(image: "assets/image/ktm.png", key: "kt", isAccept: false),
          HomeModel(image: "assets/image/bulet.png", key: "bu", isAccept: false),
          HomeModel(image: "assets/image/kawasaki.png", key: "ka", isAccept: false),
        ],
        DragTargetList: [
          HomeModel(image: "assets/image/ktm.png", key: "kt", isAccept: false),
          HomeModel(image: "assets/image/bulet.png", key: "bu", isAccept: false),
          HomeModel(image: "assets/image/kawasaki.png", key: "ka", isAccept: false),
          HomeModel(image: "assets/image/bmw.png", key: "bm", isAccept: false),
        ]
    ),
  ].obs;
  RxList list = [].obs;
  RxBool ewin = false.obs;
  RxBool mwin = false.obs;
  RxBool hwin = false.obs;
  // Rx<AnimationController>? animationController;
  // Rx<Animation>? AlignAnimation;
}
