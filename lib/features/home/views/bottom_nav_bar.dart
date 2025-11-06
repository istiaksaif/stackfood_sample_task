import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

import '../controllers/navigation_controller.dart';
import '../widget/home_bottom_nav.dart';
import 'home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
    with WidgetsBindingObserver {
  late NavigationController navController;

  @override
  void initState() {
    super.initState();
    navController = Get.find<NavigationController>();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          PageView(
            controller: navController.pageController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              HomeScreen(),
              SizedBox.shrink(),
              SizedBox.shrink(),
              SizedBox.shrink(),
              SizedBox.shrink(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: HomeBottomNav(),
      floatingActionButton: const ClipOval(
        child: Material(
          color: Color(0xFF7861FF),
          elevation: 10,
          child: InkWell(
            child: SizedBox(
              width: 56,
              height: 56,
              child: Icon(
                CupertinoIcons.add_circled,
                size: 28,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
