import 'dart:convert';

AuthResponse authResponseFromJson(String str) => AuthResponse.fromJson(json.decode(str));

String authResponseToJson(AuthResponse data) => json.encode(data.toJson());

class AuthResponse {
  final String? status;
  final String? message;
  final String? data;
  final Error? error;
  final String? stack;

  AuthResponse({
    this.status,
    this.message,
    this.data,
    this.error,
    this.stack,
  });

  AuthResponse copyWith({
    String? status,
    String? message,
    Error? error,
    String? stack,
  }) =>
      AuthResponse(
        status: status ?? this.status,
        message: message ?? this.message,
        error: error ?? this.error,
        stack: stack ?? this.stack,
      );

  factory AuthResponse.fromJson(Map<String, dynamic> json) => AuthResponse(
    status: json["status"],
    message: json["message"],
    data: json["data"],
    error: json["error"] == null ? null : Error.fromJson(json["error"]),
    stack: json["stack"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": data,
    "error": error?.toJson(),
    "stack": stack,
  };
}

class Error {
  final int? statusCode;
  final String? status;
  final bool? isOperational;

  Error({
    this.statusCode,
    this.status,
    this.isOperational,
  });

  Error copyWith({
    int? statusCode,
    String? status,
    bool? isOperational,
  }) =>
      Error(
        statusCode: statusCode ?? this.statusCode,
        status: status ?? this.status,
        isOperational: isOperational ?? this.isOperational,
      );

  factory Error.fromJson(Map<String, dynamic> json) => Error(
    statusCode: json["statusCode"],
    status: json["status"],
    isOperational: json["isOperational"],
  );

  Map<String, dynamic> toJson() => {
    "statusCode": statusCode,
    "status": status,
    "isOperational": isOperational,
  };
}
