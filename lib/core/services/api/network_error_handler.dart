import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

// typedef RetryCallback = void Function();
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
  ]) async{
    if (kDebugMode) {
      debugPrint('====> Network Exception: $e');
      if (stackTrace != null) debugPrint('====> Stack: $stackTrace');
    }

    if (e is TimeoutException) {
      if (onRetry != null) await onRetry();
      return Response(timeoutMessage, 408);
    }

    if (e is SocketException) {
      final message = e.osError?.message ?? e.message;

      if (message.contains('Connection refused')) {
        onRetry?.call();
        return Response(
          'Server not reachable. Please check your backend connection.',
          111,
        );
      } else if (message.contains('Network is unreachable') ||
          message.contains('Failed host lookup')) {
        onRetry?.call();
        return Response(noInternetMessage, 0);
      }

      return Response(noInternetMessage, 0);
    }

    if (e is FormatException) {
      return Response(formatMessage, -2);
    }

    if (e is HttpException) {
      return Response(httpMessage, -3);
    }

    return Response(unknownMessage, -1);
  }
}
