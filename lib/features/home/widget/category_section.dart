import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_fonts.dart';
import '../../../core/widgets/image_loader.dart';
import '../controllers/home_controller.dart';
import '../models/categories_model.dart';

class CategorySection extends StatelessWidget {
  final HomeController homeController;

  const CategorySection({super.key, required this.homeController});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final loading =
          homeController.isCategoriesLoading.value &&
          homeController.categories.isEmpty;

      return Skeletonizer(
        enabled: loading,
        enableSwitchAnimation: true,
        effect: PulseEffect(
          from: AppColor.shimmerBase,
          to: AppColor.shimmerHigh,
          duration: const Duration(seconds: 1),
        ),
        child: homeController.categories.isEmpty
            ? _categorySkeleton()
            : SizedBox(
                height: 84.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  itemCount: homeController.categories.length,
                  itemBuilder: (_, index) {
                    CategoriesModel categoriesModel =
                        homeController.categories[index];
                    return Column(
                      children: [
                        ImageLoader(
                          size: 58.r,
                          radius: 10.r,
                          url: categoriesModel.imageFullUrl ?? '',
                          boxFit: BoxFit.cover,
                        ),
                        SizedBox(height: 12.h),
                        Text(
                          categoriesModel.name ?? '',
                          style: mulishBold.copyWith(fontSize: 13.sp),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(width: 16.w);
                  },
                ),
              ),
      );
    });
  }

  Widget _categorySkeleton() {
    return SizedBox(
      height: 84.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        itemCount: 8,
        separatorBuilder: (_, __) => SizedBox(width: 16.w),
        itemBuilder: (_, index) => Column(
          children: [
            Container(
              width: 58.r,
              height: 58.r,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            SizedBox(height: 12.h),
            Container(width: 40.w, height: 10.h, color: Colors.grey.shade300),
          ],
        ),
      ),
    );
  }
}
