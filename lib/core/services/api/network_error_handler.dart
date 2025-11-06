import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

import 'network_error_helper_stub.dart'
    if (dart.library.io) 'network_error_helper_io.dart' as io_helper;

typedef RetryCallback = Future<void> Function();

class NetworkErrorHandler {
  static const String timeoutMessage =
      'Connection timed out. Please try again.';
  static const String noInternetMessage =
      'No internet connection. Check your network.';
  static const String formatMessage = 'Invalid server response format.';
  static const String httpMessage = 'Server communication error.';
  static const String unknownMessage =
      'Something went wrong! Please try again later.';

  static Future<Response> handle(
    Object e, [
    StackTrace? stackTrace,
    RetryCallback? onRetry,
  ]) async {
    if (kDebugMode) {
      debugPrint('====> Network Exception: $e');
      if (stackTrace != null) debugPrint('====> Stack: $stackTrace');
    }

    if (e is TimeoutException) {
      if (onRetry != null) await onRetry();
      return Response(timeoutMessage, 408);
    }

    if (io_helper.isSocketException(e)) {
      final message = io_helper.socketExceptionMessage(e) ?? '';

      if (message.contains('Connection refused')) {
        await onRetry?.call();
        return Response(
          'Server not reachable. Please check your backend connection.',
          111,
        );
      } else if (message.contains('Network is unreachable') ||
          message.contains('Failed host lookup')) {
        await onRetry?.call();
        return Response(noInternetMessage, 0);
      }

      return Response(noInternetMessage, 0);
    }

    if (e is FormatException) {
      return Response(formatMessage, -2);
    }

    if (io_helper.isHttpException(e)) {
      return Response(httpMessage, -3);
    }

    return Response(unknownMessage, -1);
  }
}
