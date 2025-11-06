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
      height: 70.h,
      width: 1.sw,
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        border: Border(top: BorderSide(color: AppColor.borderColor, width: 1)),
      ),
      alignment: Alignment.bottomCenter,
      child: Obx(() {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomNavItem(
              onTap: () {
                navigationController.clickStartTrack.value = 0;
                navigationController.setActiveIndex(0);
              },
              iconPath: navigationController.activeIndex.value == 0
                  ? AppImage.icHomeBold
                  : AppImage.icHome,
              iconSize: 24.h,
            ),
            CustomNavItem(
              onTap: () {
                navigationController.setActiveIndex(1);
              },
              iconPath: navigationController.activeIndex.value == 1
                  ? AppImage.icFavBold
                  : AppImage.icFav,
              iconSize: 24.h,
            ),
            SizedBox(width: 32.w),
            CustomNavItem(
              onTap: () {
                navigationController.setActiveIndex(2);
              },
              iconPath: navigationController.activeIndex.value == 2
                  ? AppImage.icOrdersBold
                  : AppImage.icOrders,
              iconSize: 24.h,
            ),
            CustomNavItem(
              onTap: () {
                navigationController.setActiveIndex(3);
              },
              iconPath: navigationController.activeIndex.value == 3
                  ? AppImage.icMenuBold
                  : AppImage.icMenu,
              iconSize: 24.h,
            ),
          ],
        );
      }),
    );
  }
}
