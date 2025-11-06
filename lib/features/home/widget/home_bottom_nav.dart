import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_image.dart';
import '../controllers/navigation_controller.dart';
import 'custom_nav_item.dart';

class HomeBottomNav extends StatefulWidget {
  const HomeBottomNav({super.key});

  @override
  State<HomeBottomNav> createState() => _HomeBottomNavState();
}

class _HomeBottomNavState extends State<HomeBottomNav>
    with AutomaticKeepAliveClientMixin<HomeBottomNav> {
  @override
  bool get wantKeepAlive => true;
  late NavigationController navigationController;

  @override
  void initState() {
    super.initState();
    navigationController = Get.find<NavigationController>();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      height: 56.h,
      width: 1.sw,
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .15),
            blurRadius: 16,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      alignment: Alignment.bottomCenter,
      child: Obx(() {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomNavItem(
              onTap: () {
                navigationController.clickStartTrack.value = 0;
                navigationController.setActiveIndex(0);
              },
              iconPath: AppImage.icHome,
              selected: navigationController.activeIndex.value == 0
                  ? true
                  : false,
            ),
            CustomNavItem(
              onTap: () {
                navigationController.setActiveIndex(1);
              },
              iconPath: AppImage.icFav,
              selected: navigationController.activeIndex.value == 1
                  ? true
                  : false,
            ),
            CustomNavItem(
              onTap: () {
                navigationController.setActiveIndex(2);
              },
              iconPath: AppImage.icOrders,
              selected: navigationController.activeIndex.value == 2
                  ? true
                  : false,
            ),
            CustomNavItem(
              onTap: () {
                navigationController.setActiveIndex(3);
              },
              iconPath: AppImage.icMenu,
              selected: navigationController.activeIndex.value == 3
                  ? true
                  : false,
            ),
          ],
        );
      }),
    );
  }
}
