import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_fonts.dart';
import '../../../core/widgets/custom_app_bar.dart';
import '../controllers/home_controller.dart';
import '../widget/campaign_section.dart';
import '../widget/category_section.dart';
import '../widget/popular_food_section.dart';
import '../widget/restaurant_section.dart';
import 'banner_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin<HomeScreen> {
  @override
  bool get wantKeepAlive => true;

  late HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = Get.find<HomeController>();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: CustomAppBar(
        isBackButtonExist: false,
        preferredHeight: 40.h,
        titleWidget: Row(
          children: [
            Icon(
              Icons.location_on_rounded,
              size: 18.r,
              color: AppColor.greenColor,
            ),
            SizedBox(width: 4.w),
            Expanded(
              child: Obx(
                () => Text(
                  homeController.currentAddress.value,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: mulishMedium.copyWith(
                    fontSize: 14.sp,
                    color: AppColor.textSec,
                  ),
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(30.r),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: EdgeInsets.all(6.r),
                    child: Icon(
                      Icons.notifications_rounded,
                      size: 20.r,
                      color: AppColor.textColor,
                    ),
                  ),

                  Positioned(
                    right: 6.w,
                    top: 2.h,
                    child: Container(
                      width: 7.r,
                      height: 7.r,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async => homeController.initHomeData(isReload: true),
        child: ListView.builder(
          controller: homeController.scrollController,
          physics: const AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.only(bottom: 40.h),
          itemCount: 10,
          itemBuilder: (_, index) {
            switch (index) {
              case 0:
                return _buildSearchBar();
              case 1:
                return BannerSection(homeController: homeController);
              case 2:
                return _sectionHeader("Categories", onViewAll: () {});
              case 3:
                return CategorySection(homeController: homeController);
              case 4:
                return _sectionHeader(
                  "Popular Food Nearby",
                  onViewAll: () {},
                  marginTop: 28,
                  marginBottom: 4,
                );
              case 5:
                return PopularFoodSection(homeController: homeController);
              case 6:
                return _sectionHeader(
                  "Food Campaign",
                  onViewAll: () {},
                  marginTop: 14,
                  marginBottom: 4,
                );
              case 7:
                return CampaignSection(homeController: homeController);
              case 8:
                return _sectionHeader(
                  "Restaurants",
                  marginBottom: 4,
                  onFilterSelect: (value) {
                    if (value == "item1") {
                    } else if (value == "item2") {}
                  },
                );
              case 9:
                return RestaurantSection(homeController: homeController);
              default:
                return const SizedBox();
            }
          },
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.w, 5.h, 20.w, 22.h),
      child: Container(
        height: 60.h,
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.06),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                "Search food or restaurant here...",
                style: mulishReg.copyWith(color: Colors.grey),
              ),
            ),
            const SizedBox(width: 8),
            const Icon(Icons.search, size: 22, color: Colors.grey),
          ],
        ),
      ),
    );
  }

  Widget _sectionHeader(
    String title, {
    VoidCallback? onViewAll,
    double marginTop = 0,
    double marginBottom = 14,
    void Function(String value)? onFilterSelect,
  }) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.w, marginTop.h, 16.w, marginBottom.h),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: mulishExtraBold.copyWith(
                fontSize: 18.sp,
                color: AppColor.textColor,
              ),
            ),
          ),

          if (onViewAll != null)
            InkWell(
              onTap: onViewAll,
              borderRadius: BorderRadius.circular(6.r),
              child: Padding(
                padding: EdgeInsets.all(4.r),
                child: Text(
                  "View All",
                  style: mulishSemiBold.copyWith(
                    fontSize: 14.sp,
                    color: AppColor.greenColor,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColor.greenColor,
                    decorationThickness: 1.5,
                  ),
                ),
              ),
            ),
          if (onFilterSelect != null)
            PopupMenuButton<String>(
              elevation: 2,
              color: Colors.white,
              offset: Offset(-25.w, 25.h),
              menuPadding: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.r),
              ),
              icon: Icon(
                Icons.filter_list_rounded,
                color: AppColor.textColor,
                size: 22.r,
              ),
              onSelected: (value) {
                onFilterSelect(value);
              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  value: "all",
                  child: Text(
                    "All",
                    style: mulishReg.copyWith(
                      fontSize: 14.sp,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                PopupMenuItem(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  value: "item2",
                  child: Text(
                    "Item 2",
                    style: mulishReg.copyWith(
                      fontSize: 14.sp,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
