import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_color.dart';
import '../utils/app_fonts.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final TextStyle? titleStyle;
  final Function? onTap;
  final bool? isLoading;
  final double? width;
  final double? height;
  final double? radius;
  final Color? bgColor;
  final Color? borderColor;
  final Color? loadingColor;
  final String? svgIcon;
  final Color? svgIconColor;
  final double? svgIconHeight;
  final String? imageIcon;
  final String? imageIconSvg;
  final MainAxisAlignment? mainAxisAlignment;
  final String? checkImage;
  final double? isNeedSpace;
  final IconData? icon;
  final bool? isChecked;
  final bool isGradient;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? imageIconSvgPadding;
  final EdgeInsetsGeometry? margin;

  const CustomButton({
    super.key,
    this.title,
    this.onTap,
    this.isLoading,
    this.width,
    this.height,
    this.bgColor,
    this.titleStyle,
    this.radius,
    this.imageIcon,
    this.svgIcon,
    this.icon,
    this.borderColor,
    this.loadingColor,
    this.imageIconSvg,
    this.isNeedSpace,
    this.isChecked,
    this.checkImage,
    this.padding,
    this.margin,
    this.svgIconColor,
    this.mainAxisAlignment,
    this.svgIconHeight,
    this.isGradient = false, this.imageIconSvgPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: Material(
        shadowColor: Colors.black54,
        elevation: 0.0,
        color: bgColor ?? AppColor.buttonColor,
        borderRadius: BorderRadius.circular(radius ?? 8),
        child: InkWell(
          borderRadius: BorderRadius.circular(radius ?? 8),
          onTap: () {
            if (onTap != null && !(isLoading ?? false)) {
              onTap!();
            }
          },
          child: Container(
            height: (height ?? 55).h,
            width: width != null ? width!.w : 1.sw,
            alignment: Alignment.center,
            padding: padding ?? EdgeInsets.zero,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius ?? 8),
              border: Border.all(
                color: borderColor ?? AppColor.buttonColor,
                width: 1,
              ),
            ),
            child: isLoading != null && isLoading!
                ? Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            loadingColor ?? AppColor.whiteColor,
                          ),
                          strokeWidth: 2,
                        ),
                      ],
                    ),
                  )
                : Row(
                    mainAxisAlignment:
                        (imageIcon != null ||
                            imageIconSvg != null ||
                            checkImage != null)
                        ? mainAxisAlignment ?? MainAxisAlignment.start
                        : mainAxisAlignment ?? MainAxisAlignment.center,
                    children: [
                      if (imageIcon != null)
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 16),
                          child: Image.asset(imageIcon!, width: 24),
                        ),
                      if (imageIconSvg != null)
                        Padding(
                          padding: imageIconSvgPadding ?? EdgeInsets.only(left: 20, right: 16),
                          child: SvgPicture.asset(imageIconSvg!),
                        ),
                      if (checkImage != null)
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 16),
                            child: isChecked != null && isChecked!
                                ? SvgPicture.asset(checkImage!)
                                : Container(
                                    height: 18,
                                    width: 18,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: AppColor.buttonColor,
                                      ),
                                    ),
                                  ),
                          ),
                        ),
                      Text(
                        title ?? '',
                        style:
                            titleStyle ??
                            mulishBold.copyWith(color: AppColor.whiteColor),
                      ),
                      if (svgIcon != null || icon != null)
                        SizedBox(width: isNeedSpace ?? 5),
                      if (svgIcon != null)
                        Flexible(
                          child: SvgPicture.asset(
                            svgIcon!,
                            colorFilter: svgIconColor != null
                                ? ColorFilter.mode(svgIconColor!, BlendMode.srcIn)
                                : null,
                            height: svgIconHeight,
                          ),
                        ),
                      if (icon != null)
                        Flexible(child: Icon(icon, color: AppColor.whiteColor)),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
