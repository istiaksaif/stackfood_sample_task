import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_fonts.dart';
import '../../../core/widgets/image_loader.dart';
import '../../shared/model/restaurant.dart';
import '../controllers/home_controller.dart';

class RestaurantSection extends StatelessWidget {
  final HomeController homeController;

  const RestaurantSection({super.key, required this.homeController});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final loading =
          homeController.isRestaurantLoading.value &&
          homeController.restaurants.isEmpty;

      return Skeletonizer(
        enabled: loading,
        effect: PulseEffect(
          from: AppColor.shimmerBase,
          to: AppColor.shimmerHigh,
          duration: const Duration(seconds: 1),
        ),
        child: homeController.restaurants.isEmpty
            ? _restaurantSkeleton()
            : ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                physics: const NeverScrollableScrollPhysics(),
                itemCount:
                    homeController.restaurants.length +
                    (homeController.isRestaurantLoading.value ? 1 : 0),
                itemBuilder: (_, index) {
                  if (index == homeController.restaurants.length) {
                    return Padding(
                      padding: EdgeInsets.all(14.h),
                      child: Center(
                        child: SizedBox(
                          height: 20.h,
                          width: 20.h,
                          child: CircularProgressIndicator(
                            color: AppColor.greenColor,
                            strokeWidth: 2.h,
                          ),
                        ),
                      ),
                    );
                  }

                  Restaurant restaurant = homeController.restaurants[index];

                  return Container(
                    padding: EdgeInsets.all(4.r),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.05),
                          offset: const Offset(0, 2),
                          blurRadius: 3,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        ImageLoader(
                          url: restaurant.coverPhotoFullUrl ?? "",
                          width: 100.w,
                          height: 80.h,
                          radius: 12.r,
                          boxFit: BoxFit.cover,
                        ),
                        SizedBox(width: 15.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 9.h,
                            children: [
                              Text(
                                restaurant.name ?? '',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: mulishBold.copyWith(fontSize: 16.sp),
                              ),
                              Text(
                                restaurant.address ?? '',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: mulishReg.copyWith(
                                  color: AppColor.textSec,
                                  fontSize: 13.sp,
                                ),
                              ),
                              RatingBarIndicator(
                                rating: (restaurant.avgRating ?? 0).toDouble(),
                                itemCount: 5,
                                itemSize: 16.r,
                                unratedColor: Colors.grey.withValues(
                                  alpha: 0.3,
                                ),
                                itemBuilder: (context, index) => Icon(
                                  Icons.star_rounded,
                                  color: AppColor.greenColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.w, right: 10.w),
                          child: Column(
                            spacing: 28.h,
                            children: [
                              Icon(
                                Icons.favorite_border_rounded,
                                size: 17.r,
                                color: AppColor.textSec,
                              ),
                              Icon(
                                Icons.add_rounded,
                                size: 18.r,
                                color: AppColor.textSec,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 20.h);
                },
              ),
      );
    });
  }

  Widget _restaurantSkeleton() {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      itemCount: 5,
      separatorBuilder: (_, __) => SizedBox(height: 20.h),
      itemBuilder: (_, index) => Container(
        padding: EdgeInsets.all(4.r),
        height: 90.h,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Container(
              width: 100.w,
              height: 80.h,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            SizedBox(width: 15.w),
            Expanded(
              child: Column(
                spacing: 10.h,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 140.w,
                    height: 12.h,
                    color: Colors.grey.shade400,
                  ),
                  Container(
                    width: 100.w,
                    height: 10.h,
                    color: Colors.grey.shade400,
                  ),
                  Container(
                    width: 120.w,
                    height: 12.h,
                    color: Colors.grey.shade400,
                  ),
                ],
              ),
            ),
            SizedBox(width: 12.w),
          ],
        ),
      ),
    );
  }
}
