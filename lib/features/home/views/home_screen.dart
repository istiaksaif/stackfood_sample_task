import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stackfood_sample_task/features/home/models/campaigns_item_model.dart';
import 'package:stackfood_sample_task/features/home/models/categories_model.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_fonts.dart';
import '../../../core/widgets/custom_app_bar.dart';
import '../../../core/widgets/image_loader.dart';
import '../../shared/model/restaurant.dart';
import '../controllers/home_controller.dart';
import '../models/popular_product_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin<HomeScreen> {
  @override
  bool get wantKeepAlive => true;

  CarouselSliderController carouselController = CarouselSliderController();
  var bannerCurrentPage = 0.obs;
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
                return _bannerSection();
              case 2:
                return _sectionHeader("Categories", onViewAll: () {});
              case 3:
                return _categorySection();
              case 4:
                return _sectionHeader(
                  "Popular Food Nearby",
                  onViewAll: () {},
                  marginTop: 28,
                  marginBottom: 4,
                );
              case 5:
                return _popularFoodSection();
              case 6:
                return _sectionHeader(
                  "Food Campaign",
                  onViewAll: () {},
                  marginTop: 14,
                  marginBottom: 4,
                );
              case 7:
                return _campaignSection();
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
                return _restaurantSection();
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

  Widget _bannerSection() {
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
                return SizedBox(height: 95.h);
              }

              return CarouselSlider.builder(
                carouselController: carouselController,
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
                    bannerCurrentPage.value = index;
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
            activeIndex: bannerCurrentPage.value,
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

  Widget _categorySection() {
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
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: 6,
        itemBuilder: (_, index) => Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Column(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              const SizedBox(height: 6),
              Container(width: 40, height: 10, color: Colors.grey.shade300),
            ],
          ),
        ),
      ),
    );
  }

  Widget _popularFoodSection() {
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
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 16),
        itemCount: 3,
        itemBuilder: (_, index) => Container(
          width: 220,
          margin: const EdgeInsets.only(right: 14),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }

  Widget _campaignSection() {
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
                                                  "\$${campaignsItemModel.price}",
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
                                                  "\$${campaignsItemModel.discount}",
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
      height: 240,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 16),
        itemCount: 3,
        itemBuilder: (_, _) => Container(
          width: 260,
          margin: const EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }

  Widget _restaurantSection() {
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
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: 5,
      itemBuilder: (_, index) => Container(
        height: 100,
        margin: const EdgeInsets.only(bottom: 14),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(16),
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
