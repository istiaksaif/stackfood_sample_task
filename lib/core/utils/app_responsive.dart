import 'dart:math';

import 'package:flutter/widgets.dart';

class AppResponsive {
  static const double _tabletBreakpoint = 600;
  static const double _desktopBreakpoint = 1024;
  static const double _mobileMaxWidth = 430;
  static const double _tabletMaxWidth = 520;
  static const double _desktopMaxWidth = 620;

  static double _width(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static bool isTablet(BuildContext context) =>
      _width(context) >= _tabletBreakpoint &&
      _width(context) < _desktopBreakpoint;

  static bool isDesktop(BuildContext context) =>
      _width(context) >= _desktopBreakpoint;

  static bool isMobile(BuildContext context) =>
      !isTablet(context) && !isDesktop(context);

  static T value<T>({
    required BuildContext context,
    required T mobile,
    T? tablet,
    T? desktop,
  }) {
    if (isDesktop(context)) {
      return desktop ?? tablet ?? mobile;
    }
    if (isTablet(context)) {
      return tablet ?? mobile;
    }
    return mobile;
  }

  static double resolveContentWidth(double maxAvailableWidth) {
    final double targetWidth;
    if (maxAvailableWidth >= _desktopBreakpoint) {
      targetWidth = _desktopMaxWidth;
    } else if (maxAvailableWidth >= _tabletBreakpoint) {
      targetWidth = _tabletMaxWidth;
    } else {
      targetWidth = min(maxAvailableWidth, _mobileMaxWidth);
    }
    return min(targetWidth, maxAvailableWidth);
  }
}
