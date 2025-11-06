import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/session_manager.dart';
import 'network_error_handler.dart';

class ApiClient {
  final String appBaseUrl;
  final int timeoutInSeconds = 30;

  String accessToken = '';
  late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseUrl}) {
    accessToken = SessionManager.getValue(kToken, value: '');
    updateHeader(token: accessToken);
  }

  void removeToken() {
    accessToken = '';
    updateHeader();
  }

  void updateHeader({String? token, String? forceUpdateToken}) async {
    if (accessToken.isEmpty && token != null) {
      accessToken = token;
    }
    if (forceUpdateToken != null) {
      accessToken = forceUpdateToken;
    }

    _mainHeaders = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $accessToken',
      'zoneId': '[1]',
      'latitude': '23.735129',
      'longitude': '90.425614',
    };
  }

  Future<Response> getData(
    String uri, {
    Map<String, dynamic>? query,
    Map<String, String>? headers,
    bool isAutoLogout = true,
    Function? retryCallback,
  }) async {
    try {
      Uri fullUri = Uri.parse(
        '$appBaseUrl$uri',
      ).replace(queryParameters: query);
      if (kDebugMode) {
        debugPrint('====> API Call: $fullUri\nHeader: $_mainHeaders');
      }
      Response response = await http
          .get(fullUri, headers: headers ?? _mainHeaders)
          .timeout(Duration(seconds: timeoutInSeconds));
      return handleResponse(response, uri, isAutoLogout: isAutoLogout);
    } catch (e, s) {
      return NetworkErrorHandler.handle(e, s, () async {
        if (retryCallback != null) await retryCallback();
      });
    }
  }

  Future<Response> postData(
    String uri,
    dynamic body, {
    Map<String, String>? headers,
    bool isConvert = true,
    String? differBaseUrl,
    bool isAutoLogout = false,
    Function? retryCallback,
  }) async {
    try {
      if (kDebugMode) {
        debugPrint('====> API Call: $uri\nHeader: $_mainHeaders');
        debugPrint('====> API Body: $body');
      }

      Response response = await http
          .post(
            Uri.parse((differBaseUrl ?? appBaseUrl) + uri),
            body: isConvert ? jsonEncode(body) : body,
            headers: headers ?? _mainHeaders,
          )
          .timeout(Duration(seconds: timeoutInSeconds));
      return handleResponse(response, uri, isAutoLogout: isAutoLogout);
    } catch (e, s) {
      return NetworkErrorHandler.handle(e, s, () async {
        if (retryCallback != null) await retryCallback();
      });
    }
  }

  Future<Response> patchData(
    String uri,
    dynamic body, {
    Map<String, String>? headers,
    bool isConvert = true,
    String? differBaseUrl,
    bool isAutoLogout = false,
    Function? retryCallback,
    bool isMultipart = false,
    Map<String, XFile>? fileMap,
  }) async {
    try {
      if (isMultipart) {
        var request = http.MultipartRequest(
          'PATCH',
          Uri.parse((differBaseUrl ?? appBaseUrl) + uri),
        );

        // Headers
        request.headers.addAll(headers ?? _mainHeaders);

        // Add fields
        if (body is Map) {
          body.forEach((key, value) {
            if (value.toString().trim().isNotEmpty) {
              request.fields[key] = value.toString();
            }
          });
        }

        // Add files
        if (fileMap != null) {
          for (final entry in fileMap.entries) {
            final file = await http.MultipartFile.fromPath(
              entry.key,
              entry.value.path,
              contentType: MediaType('image', 'jpeg'),
            );
            request.files.add(file);
          }
        }

        // Send multipart request
        final streamedResponse = await request.send().timeout(
          Duration(seconds: timeoutInSeconds),
        );
        final resBody = await streamedResponse.stream.bytesToString();

        final httpResponse = http.Response(
          resBody,
          streamedResponse.statusCode,
        );
        return handleResponse(httpResponse, uri, isAutoLogout: isAutoLogout);
      } else {
        if (kDebugMode) {
          debugPrint('====> API PATCH Call: $uri\nHeader: $_mainHeaders');
          debugPrint('====> API PATCH Body: $body');
        }

        Response response = await http
            .patch(
              Uri.parse((differBaseUrl ?? appBaseUrl) + uri),
              body: isConvert ? jsonEncode(body) : body,
              headers: headers ?? _mainHeaders,
            )
            .timeout(Duration(seconds: timeoutInSeconds));

        return handleResponse(response, uri, isAutoLogout: isAutoLogout);
      }
    } catch (e, s) {
      return NetworkErrorHandler.handle(e, s, () async {
        if (retryCallback != null) await retryCallback();
      });
    }
  }

  Future<Response> deleteData(
    String uri, {
    Map<String, dynamic>? query,
    Map<String, String>? headers,
    bool isAutoLogout = true,
    Function? retryCallback,
  }) async {
    try {
      Uri fullUri = Uri.parse(
        '$appBaseUrl$uri',
      ).replace(queryParameters: query);
      if (kDebugMode) {
        debugPrint('====> API DELETE Call: $fullUri\nHeader: $_mainHeaders');
      }
      Response response = await http
          .delete(fullUri, headers: headers ?? _mainHeaders)
          .timeout(Duration(seconds: timeoutInSeconds));
      return handleResponse(response, uri, isAutoLogout: isAutoLogout);
    } catch (e, s) {
      return NetworkErrorHandler.handle(e, s, () async {
        if (retryCallback != null) await retryCallback();
      });
    }
  }

  Response handleResponse(
    Response response,
    String uri, {
    bool isAutoLogout = true,
  }) {
    Response response0 = response;

    if (response0.statusCode != 200 && response0.statusCode != 201) {
      if (response0.statusCode == 401) {
        if (isAutoLogout) {
          accessToken = '';
          SessionManager.logout();
        }
      } else {
        response0 = Response(response0.body, response0.statusCode);
      }
    } else if (response0.statusCode != 200 && response0.statusCode != 201) {
      response0 = Response(NetworkErrorHandler.noInternetMessage, 0);
    }
    if (kDebugMode) {
      debugPrint(
        '====> API Response: [${response0.statusCode}] $uri\n${response0.body}',
      );
    }
    return response0;
  }
}
