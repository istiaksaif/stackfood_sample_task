import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/app_color.dart';

class CustomNavItem extends StatelessWidget {
  final VoidCallback onTap;
  final String? iconPath;

  const CustomNavItem({super.key, required this.onTap, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Expanded(child: Center(child: SvgPicture.asset(iconPath!))),
    );
  }
}
