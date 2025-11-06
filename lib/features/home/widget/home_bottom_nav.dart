import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_image.dart';
import '../../../core/utils/app_responsive.dart';
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
    final navHeight = AppResponsive.value<double>(
      context: context,
      mobile: 70,
      tablet: 70,
      desktop: 70,
    );
    final horizontalPadding = AppResponsive.value<double>(
      context: context,
      mobile: 6,
      tablet: 16,
      desktop: 20,
    );
    final verticalPadding = AppResponsive.value<double>(
      context: context,
      mobile: 6,
      tablet: 8,
      desktop: 10,
    );
    final iconSize = AppResponsive.value<double>(
      context: context,
      mobile: 22,
      tablet: 24,
      desktop: 26,
    );
    final gap = AppResponsive.value<double>(
      context: context,
      mobile: 32,
      tablet: 40,
      desktop: 48,
    );

    return Container(
      height: navHeight,
      width: 1.sw,
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
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
              iconSize: iconSize,
            ),
            CustomNavItem(
              onTap: () {
                navigationController.setActiveIndex(1);
              },
              iconPath: navigationController.activeIndex.value == 1
                  ? AppImage.icFavBold
                  : AppImage.icFav,
              iconSize: iconSize,
            ),
            SizedBox(width: gap),
            CustomNavItem(
              onTap: () {
                navigationController.setActiveIndex(2);
              },
              iconPath: navigationController.activeIndex.value == 2
                  ? AppImage.icOrdersBold
                  : AppImage.icOrders,
              iconSize: iconSize,
            ),
            CustomNavItem(
              onTap: () {
                navigationController.setActiveIndex(3);
              },
              iconPath: navigationController.activeIndex.value == 3
                  ? AppImage.icMenuBold
                  : AppImage.icMenu,
              iconSize: iconSize,
            ),
          ],
        );
      }),
    );
  }
}
