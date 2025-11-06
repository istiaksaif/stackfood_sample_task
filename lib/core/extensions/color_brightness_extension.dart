import 'dart:ui';

extension ColorBrightnessExtension on Color {
  bool get isLight {
    return computeLuminance() > 0.5;
  }

  bool get isDark => !isLight;
}
