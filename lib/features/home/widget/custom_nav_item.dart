import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavItem extends StatelessWidget {
  final VoidCallback onTap;
  final String? iconPath;
  final double iconSize;
  final EdgeInsetsGeometry? padding;

  const CustomNavItem({
    super.key,
    required this.onTap,
    required this.iconPath,
    required this.iconSize,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: onTap,
        child: Padding(
          padding: padding ?? EdgeInsets.zero,
          child: Center(
            child: SvgPicture.asset(
              iconPath!,
              width: iconSize,
              height: iconSize,
            ),
          ),
        ),
      ),
    );
  }
}
