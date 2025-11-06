import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:haptic_feedback/haptic_feedback.dart';

import 'utils/session_manager.dart';

class AppInitializer {
  static bool _initialized = false;
  static bool canVibrate = false;

  static Future<void> prepareMinimal() async {
    await SessionManager.init();
  }

  static Future<void> initPostRun() async {
    if (_initialized) return;
    _initialized = true;
    await _initHaptics();
    //other post-run initializations
  }

  static Future<void> _initHaptics() async {
    canVibrate = await Haptics.canVibrate();
    if (Platform.isAndroid) {
      final androidInfo = await DeviceInfoPlugin().androidInfo;
      if (androidInfo.version.sdkInt >= 33) {
        canVibrate = false;
      }
    }
  }
}
