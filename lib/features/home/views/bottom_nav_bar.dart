import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/instance_manager.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_image.dart';
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
              SizedBox.shrink(),
              SizedBox.shrink(),
              SizedBox.shrink(),
              SizedBox.shrink(),
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
              width: 56.w,
              height: 56.h,
              child: Center(
                child: SvgPicture.asset(AppImage.icCart, width: 24.w),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
