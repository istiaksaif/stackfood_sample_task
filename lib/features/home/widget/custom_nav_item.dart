import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/app_color.dart';

class CustomNavItem extends StatelessWidget {

  final bool selected;
  final VoidCallback onTap;
  final String? iconPath;

  const CustomNavItem({
    super.key,
    required this.onTap,
    required this.iconPath,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: onTap,
      child: SvgPicture.asset(
        iconPath!,
        colorFilter: ColorFilter.mode(
          selected ? AppColor.greenColor : Color(0xFF87A2BB),
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
