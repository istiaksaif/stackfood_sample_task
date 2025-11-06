import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_color.dart';

final mulishLight = GoogleFonts.mulish(
  fontWeight: FontWeight.w300,
  fontSize: 11.sp,
  height: 1.21.h,
  color: AppColor.textColor,
);
final mulishReg = GoogleFonts.mulish(
  fontWeight: FontWeight.w400,
  fontSize: 12.sp,
  height: 1.h,
  color: AppColor.whiteColor,
);
final mulishMedium = GoogleFonts.mulish(
  fontWeight: FontWeight.w500,
  fontSize: 14.sp,
  height: 1.h,
  color: AppColor.textColor,
);

final mulishSemiBold = GoogleFonts.mulish(
  fontWeight: FontWeight.w600,
  fontSize: 14.sp,
  height: 1.h,
  color: AppColor.textColor,
);

final mulishBold = GoogleFonts.mulish(
  fontWeight: FontWeight.w700,
  fontSize: 16.sp,
  height: 1.h,
  color: AppColor.textColor,
);

final mulishExtraBold = GoogleFonts.mulish(
  fontWeight: FontWeight.w800,
  fontSize: 16.sp,
  height: 1.h,
  color: AppColor.textColor,
);

final tourneyBlack = GoogleFonts.tourney(
  fontWeight: FontWeight.w900,
  fontSize: 28.sp,
  height: 1.h,
  color: AppColor.whiteColor,
);

final interSemiBold = GoogleFonts.inter(
  fontWeight: FontWeight.w600,
  fontSize: 32.sp,
  height: 1.h,
  color: AppColor.textColor,
);

final interBold = GoogleFonts.inter(
  fontWeight: FontWeight.w700,
  fontSize: 24.sp,
  height: 1.h,
  color: AppColor.textColor,
);

String capitalizeFirstLetterOfEachWord(String input) {
  if (input.isEmpty) return '';
  return input
      .split(' ')
      .map((word) {
        if (word.isEmpty) return '';
        return word[0].toUpperCase() + word.substring(1);
      })
      .join(' ');
}

String capitalizeFirstLetter(String input) {
  if (input.isEmpty) return '';
  return input[0].toUpperCase() + input.substring(1);
}
