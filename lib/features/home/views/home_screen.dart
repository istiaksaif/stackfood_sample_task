import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/instance_manager.dart';
import '../../../core/utils/app_color.dart';
import '../../../core/widgets/custom_app_bar.dart';
import '../controllers/home_controller.dart';
import '../controllers/navigation_controller.dart';

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

  late HomeController homeController;
  late NavigationController navigationController;

  @override
  void initState() {
    super.initState();
    homeController = Get.find<HomeController>();
    navigationController = Get.find<NavigationController>();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: CustomAppBar(
        isBackButtonExist: false,
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 390.h,
              toolbarHeight: 174.h,
              pinned: true,
              elevation: 0,
              automaticallyImplyLeading: false,
              backgroundColor: AppColor.bgColor,
              surfaceTintColor: Colors.transparent,
            ),
          ];
        },
        body: RefreshIndicator(
          onRefresh: () async {
            await homeController.refreshData();
          },
          color: AppColor.bgColor,
          backgroundColor: AppColor.backgroundColor,
          child: SizedBox(),
        ),
      ),
    );
  }
}
