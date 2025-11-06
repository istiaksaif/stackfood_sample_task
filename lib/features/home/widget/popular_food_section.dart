import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_fonts.dart';
import '../../../core/widgets/image_loader.dart';
import '../controllers/home_controller.dart';
import '../models/popular_product_model.dart';

class PopularFoodSection extends StatelessWidget {
  final HomeController homeController;
  const PopularFoodSection({super.key, required this.homeController});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final loading =
          homeController.isPopularFoodsLoading.value &&
              homeController.popularFoods.isEmpty;

      return Skeletonizer(
        enabled: loading,
        effect: PulseEffect(
          from: AppColor.shimmerBase,
          to: AppColor.shimmerHigh,
          duration: const Duration(seconds: 1),
        ),
        child: homeController.popularFoods.isEmpty
            ? _popularFoodSkeleton()
            : SizedBox(
          height: 212.h,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 10.h,
            ),
            itemCount: homeController.popularFoods.length,
            itemBuilder: (_, index) {
              Product food = homeController.popularFoods[index];
              return Container(
                width: 175.w,
                height: 175.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      offset: const Offset(0, 2),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ImageLoader(
                      url: food.imageFullUrl ?? "",
                      height: 95.h,
                      width: 175.w,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(10.r),
                      ),
                      boxFit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.w,
                        vertical: 14.h,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            food.name ?? '',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: mulishBold.copyWith(fontSize: 18.sp),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            food.restaurantName ?? '',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: mulishReg.copyWith(
                              fontSize: 13.sp,
                              color: AppColor.textSec,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Row(
                            children: [
                              Text(
                                "\$${food.price}",
                                style: mulishBold.copyWith(
                                  fontSize: 15.sp,
                                ),
                              ),
                              const Spacer(),
                              Icon(
                                Icons.star_rounded,
                                size: 16.r,
                                color: AppColor.greenColor,
                              ),
                              SizedBox(width: 4.w),
                              Text(
                                (food.avgRating ?? 0).toStringAsFixed(1),
                                style: mulishBold.copyWith(
                                  color: AppColor.greenColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(width: 14.w);
            },
          ),
        ),
      );
    });
  }

  Widget _popularFoodSkeleton() {
    return SizedBox(
      height: 212.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        itemCount: 3,
        separatorBuilder: (_, __) => SizedBox(width: 14.w),
        itemBuilder: (_, index) => Container(
          width: 175.w,
          height: 175.h,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Column(
            children: [
              Container(
                height: 95.h,
                width: 175.w,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(10.r),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.w,
                    vertical: 14.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10.h,
                    children: [
                      Container(
                        width: 120.w,
                        height: 12.h,
                        color: Colors.grey.shade300,
                      ),
                      Container(
                        width: 100.w,
                        height: 10.h,
                        color: Colors.grey.shade300,
                      ),
                      Container(
                        width: 80.w,
                        height: 12.h,
                        color: Colors.grey.shade300,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
