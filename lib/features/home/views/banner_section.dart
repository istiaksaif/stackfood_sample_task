import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/widgets/image_loader.dart';
import '../controllers/home_controller.dart';

class BannerSection extends StatelessWidget {
  final HomeController homeController;
  const BannerSection({super.key, required this.homeController});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Obx(() {
          final isLoading = homeController.isBannerLoading.value;
          final hasData = homeController.banners.isNotEmpty;

          return Skeletonizer(
            enabled: isLoading && !hasData,
            enableSwitchAnimation: true,
            effect: PulseEffect(
              from: AppColor.shimmerBase,
              to: AppColor.shimmerHigh,
              duration: const Duration(seconds: 1),
            ),
            child: Obx(() {
              if (homeController.banners.isEmpty) {
                return _bannerSkeleton();
              }

              return CarouselSlider.builder(
                carouselController: homeController.carouselController,
                itemCount: homeController.banners.length,
                itemBuilder: (context, itemIndex, pageViewIndex) {
                  final banner = homeController.banners[itemIndex];

                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: ImageLoader(
                      url: banner.imageFullUrl ?? "",
                      width: 1.sw,
                      height: 95.h,
                      radius: 10.r,
                      boxFit: BoxFit.cover,
                    ),
                  );
                },
                options: CarouselOptions(
                  height: 95.h,
                  viewportFraction: 0.7,
                  enlargeCenterPage: true,
                  enlargeFactor: 0,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    homeController.bannerCurrentPage.value = index;
                  },
                ),
              );
            }),
          );
        }),

        SizedBox(height: 9.h),

        Obx(() {
          if (homeController.banners.isEmpty) return const SizedBox.shrink();

          return AnimatedSmoothIndicator(
            activeIndex: homeController.bannerCurrentPage.value,
            count: homeController.banners.length,
            effect: WormEffect(
              dotHeight: 6.r,
              dotWidth: 6.r,
              spacing: 8.w,
              activeDotColor: AppColor.greenColor,
              dotColor: AppColor.inactiveDotColor,
            ),
          );
        }),
      ],
    );
  }

  Widget _bannerSkeleton() {
    return SizedBox(
      height: 95.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        itemCount: 3,
        itemBuilder: (_, index) => Padding(
          padding: EdgeInsets.only(right: 15.w),
          child: Container(
            width: 1.sw * 0.7,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
        ),
      ),
    );
  }
}
