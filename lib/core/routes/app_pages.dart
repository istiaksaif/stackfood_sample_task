import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import '../../features/home/views/bottom_nav_bar.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.home,
      transition: Transition.native,
      transitionDuration: const Duration(milliseconds: 300),
      page: () => const BottomNavBar(),
    ),
  ];
}
