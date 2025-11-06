import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../core/extensions/currency_extension.dart';
import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_fonts.dart';
import '../../../core/widgets/image_loader.dart';
import '../controllers/home_controller.dart';
import '../models/campaigns_item_model.dart';

class CampaignSection extends StatelessWidget {
  final HomeController homeController;

  const CampaignSection({super.key, required this.homeController});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final loading =
          homeController.isCampaignsLoading.value &&
          homeController.campaigns.isEmpty;

      return Skeletonizer(
        enabled: loading,
        effect: PulseEffect(
          from: AppColor.shimmerBase,
          to: AppColor.shimmerHigh,
          duration: const Duration(seconds: 1),
        ),
        child: homeController.campaigns.isEmpty
            ? _campaignSkeleton()
            : SizedBox(
                height: 110.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 10.h,
                  ),
                  shrinkWrap: true,
                  itemCount: homeController.campaigns.length,
                  itemBuilder: (_, index) {
                    CampaignsItemModel campaignsItemModel =
                        homeController.campaigns[index];
                    return Container(
                      width: 235.w,
                      height: 95.h,
                      padding: EdgeInsets.all(4.r),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.05),
                            offset: const Offset(0, 2),
                            blurRadius: 10,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: Row(
                        spacing: 15.w,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ImageLoader(
                            url: campaignsItemModel.imageFullUrl ?? "",
                            size: 84.r,
                            radius: 8.r,
                            boxFit: BoxFit.cover,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              spacing: 6.h,
                              children: [
                                Text(
                                  campaignsItemModel.name ?? "",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: mulishBold.copyWith(fontSize: 15.sp),
                                ),
                                Text(
                                  campaignsItemModel.restaurantName ?? "",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: mulishReg.copyWith(
                                    fontSize: 13.sp,
                                    color: AppColor.textSec,
                                  ),
                                ),

                                RatingBarIndicator(
                                  rating: (campaignsItemModel.avgRating ?? 0)
                                      .toDouble(),
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
                                Row(
                                  children: [
                                    Expanded(
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:
                                                  '${campaignsItemModel.price}'
                                                      .asCurrency(),
                                              style: mulishBold.copyWith(
                                                fontSize: 15.sp,
                                                color: AppColor.textColor,
                                              ),
                                            ),

                                            WidgetSpan(
                                              child: SizedBox(width: 10.w),
                                            ),

                                            TextSpan(
                                              text:
                                                  '${campaignsItemModel.discount}'.asCurrency(),
                                              style: mulishReg.copyWith(
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                color: AppColor.textSec,
                                                fontSize: 14.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.add_rounded,
                                      size: 18.r,
                                      color: Colors.black,
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
                    return SizedBox(width: 15.w);
                  },
                ),
              ),
      );
    });
  }

  Widget _campaignSkeleton() {
    return SizedBox(
      height: 110.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        itemCount: 3,
        separatorBuilder: (_, __) => SizedBox(width: 15.w),
        itemBuilder: (_, index) => Container(
          width: 235.w,
          height: 95.h,
          padding: EdgeInsets.all(4.r),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Row(
            spacing: 15.w,
            children: [
              Container(
                width: 84.r,
                height: 84.r,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8.h,
                  mainAxisAlignment: MainAxisAlignment.center,
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
                    Container(
                      width: 60.w,
                      height: 12.h,
                      color: Colors.grey.shade300,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
