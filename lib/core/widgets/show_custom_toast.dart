import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../main.dart';
import '../utils/app_fonts.dart';
import '../utils/app_image.dart';

void showCustomToast(String message, {int duration = 2}) {
  FToast fToast = FToast();
  fToast.init(navigatorKey.currentState!.overlay!.context);

  Widget toast = Container(
    padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
    margin: EdgeInsets.symmetric(horizontal: 30.w),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: const Color(0xFF1C2243),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(AppImage.icHome, height: 24.h),
        SizedBox(width: 12.w),
        Flexible(
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: mulishReg.copyWith(fontSize: 16.sp, height: 1.3),
          ),
        ),
      ],
    ),
  );

  fToast.showToast(
    child: toast,
    gravity: ToastGravity.BOTTOM,
    toastDuration: Duration(seconds: duration),
  );
}
