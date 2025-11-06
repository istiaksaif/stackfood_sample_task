import '../../../core/utils/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/widgets/app_text_widget.dart';

class EmptyScrollableMessage extends StatelessWidget {
  final String message;
  final Color? textColor;
  final double? fontSize;
  final EdgeInsetsGeometry? padding;

  const EmptyScrollableMessage({
    super.key,
    required this.message,
    this.textColor,
    this.fontSize,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Center(
              child: Padding(
                padding: padding ?? EdgeInsets.symmetric(horizontal: 24.w),
                child: AppTextWidget(
                  message,
                  textAlign: TextAlign.center,
                  style: mulishSemiBold.copyWith(
                    color: textColor ?? AppColor.textSec,
                    fontSize: fontSize ?? 14.sp,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
