import 'dart:ui';

import 'package:url_launcher/url_launcher.dart';

extension UrlLauncherExtention on String {
  Future<void> launchUrlString({
    VoidCallback? onLaunch,
    LaunchMode? mode,
  }) async {
    final Uri url = Uri.parse(this);
    if (await canLaunchUrl(url)) {
      if (onLaunch != null) {
        onLaunch();
      }
      await launchUrl(url, mode: mode ?? LaunchMode.inAppWebView);
    }
  }
}