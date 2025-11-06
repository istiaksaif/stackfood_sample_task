import 'dart:io';

bool isSocketException(Object e) => e is SocketException;

String? socketExceptionMessage(Object e) =>
    e is SocketException ? e.osError?.message ?? e.message : null;

bool isHttpException(Object e) => e is HttpException;
