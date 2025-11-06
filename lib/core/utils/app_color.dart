import 'package:flutter/material.dart';

class AppColor {
  static const Color backgroundColor = Color(0xFFFEFEFE);
  static const Color bgColor = Color(0xFF1F2B4D);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color loadingImageBg = Color(0xFFD9D9D9);
  static const Color textColor = Color(0xFF1F2B4D);
  static const Color textSec = Color(0xFF8B92A3);
  static const Color secondaryColor = Color(0xFF5D5C64);
  static const Color borderColor = Color(0xFF495679);
  static const Color buttonColor = Color(0xFFEA806B);
  static const Color greenColor = Color(0xFF039D55);

  static Color parseHexColor(String hexCode) {
    hexCode = hexCode.replaceAll('#', '');
    if (hexCode.length == 6) hexCode = 'FF$hexCode';
    return Color(int.parse(hexCode, radix: 16));
  }
}
