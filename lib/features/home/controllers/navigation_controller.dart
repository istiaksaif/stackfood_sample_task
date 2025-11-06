import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';

class NavigationController extends GetxController {
  var activeIndex = 0.obs;
  var currentIndex = 0.obs;
  var clickStartTrack = 0.obs;
  var seeAllTitle = ''.obs;
  var seeAllType = ''.obs;
  var isProfileRoute = ''.obs;
  late PageController pageController;

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    super.onInit();
  }

  void setActiveIndex(int index) {
    pageController.jumpToPage(index);
    activeIndex.value = index;
  }

}
