import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/instance_manager.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_image.dart';
import '../../../core/utils/app_responsive.dart';
import '../../shared/view/dummy_screen.dart';
import '../controllers/navigation_controller.dart';
import '../widget/home_bottom_nav.dart';
import 'home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
    with WidgetsBindingObserver {
  late NavigationController navController;

  @override
  void initState() {
    super.initState();
    navController = Get.find<NavigationController>();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    final fabSize = AppResponsive.value<double>(
      context: context,
      mobile: 56,
      tablet: 62,
      desktop: 68,
    );
    final fabIconSize = AppResponsive.value<double>(
      context: context,
      mobile: 24,
      tablet: 26,
      desktop: 28,
    );

    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          PageView(
            controller: navController.pageController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              HomeScreen(),
              DummyScreen(),
              DummyScreen(),
              DummyScreen(),
              DummyScreen(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: HomeBottomNav(),
      floatingActionButton: ClipOval(
        child: Material(
          color: AppColor.greenColor,
          elevation: 10,
          child: InkWell(
            child: SizedBox(
              width: fabSize,
              height: fabSize,
              child: Center(
                child: SvgPicture.asset(
                  AppImage.icCart,
                  width: fabIconSize,
                  height: fabIconSize,
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
