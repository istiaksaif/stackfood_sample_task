import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import '../../../core/extensions/color_brightness_extension.dart';

import '../utils/app_color.dart';
import '../utils/app_fonts.dart';
import '../utils/app_image.dart';
import '../utils/platform_utils.dart';
import 'app_text_widget.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? titleWidget;
  final bool isBackButtonExist;
  final Function? onBackPressed;
  final Color? bgColor;
  final Color? bottomBgColor;
  final Color? leadingIconColor;
  final String? type;
  final String? leadingIcon;
  final bool? isNotSvg;
  final double? leadingIconSize;
  final double? leadingWidth;
  final TextStyle? textStyle;
  final Widget? action;
  final Widget? flexWidget;
  final double? preferredHeight;
  final bool centerTitle;

  final PreferredSizeWidget? bottom;

  const CustomAppBar({
    super.key,
    this.title,
    this.isBackButtonExist = true,
    this.onBackPressed,
    this.bgColor,
    this.type,
    this.textStyle,
    this.leadingIconColor,
    this.leadingIcon,
    this.action,
    this.preferredHeight,
    this.flexWidget,
    this.leadingWidth,
    this.leadingIconSize,
    this.titleWidget,
    this.centerTitle = true,
    this.isNotSvg = false,
    this.bottom,
    this.bottomBgColor,
  });

  @override
  Widget build(BuildContext context) {
    final bool isIOS = PlatformUtils.isIOS;
    final color = bgColor ?? AppColor.backgroundColor;
    final navigationBarColor = bottomBgColor ?? color;
    final brightness = color.isLight
        ? (isIOS ? Brightness.light : Brightness.dark)
        : (isIOS ? Brightness.dark : Brightness.light);
    final navigationBrightness = navigationBarColor.isLight
        ? (isIOS ? Brightness.light : Brightness.dark)
        : (isIOS ? Brightness.dark : Brightness.light);

    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: color,
        statusBarBrightness: brightness,
        statusBarIconBrightness: brightness,
        systemNavigationBarIconBrightness: navigationBrightness,
        systemNavigationBarColor: navigationBarColor,
      ),
      title: Padding(
        padding: EdgeInsets.only(top: 0.h),
        child:
            titleWidget ??
            AppTextWidget(
              title ?? '',
              style:
                  textStyle ??
                  mulishBold.copyWith(
                    fontSize: 24.sp,
                    color: AppColor.whiteColor,
                  ),
            ),
      ),
      centerTitle: centerTitle,
      automaticallyImplyLeading: false,
      toolbarHeight: preferredHeight ?? (isIOS ? 36.h : 45.h),
      leading: isBackButtonExist
          ? IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              padding: EdgeInsets.zero,
              alignment: Alignment.centerLeft,
              icon: Padding(
                padding: EdgeInsets.only(left: leadingIcon != null ? 2 : 15),
                child: isNotSvg!
                    ? Image.asset(leadingIcon!, scale: leadingIconSize ?? 34)
                    : SvgPicture.asset(
                        leadingIcon ?? AppImage.icBack,
                        width: leadingIconSize ?? 22.5,
                        colorFilter: leadingIconColor != null
                            ? ColorFilter.mode(
                                leadingIconColor!,
                                BlendMode.srcIn,
                              )
                            : null,
                      ),
              ),
              color: leadingIconColor,
              onPressed: () =>
                  onBackPressed != null ? onBackPressed!() : Get.back(),
            )
          : const SizedBox(),
      backgroundColor: bgColor ?? Colors.transparent,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      leadingWidth: isBackButtonExist ? leadingWidth ?? 40 : 0,
      actions: [if (action != null) action!],
      flexibleSpace: flexWidget,
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize =>
      Size(1170, preferredHeight ?? (PlatformUtils.isIOS ? 36.h : 45.h));
}
