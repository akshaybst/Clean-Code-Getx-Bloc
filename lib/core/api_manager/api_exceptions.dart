import 'package:dio/dio.dart';

class DioApiException implements Exception {
  final String message;

  DioApiException(this.message);

  @override
  String toString() => message;

  /// Main handler to interpret Dio errors
  static String handleError(DioException error) {
    if (error.type == DioExceptionType.badResponse) {
      final statusCode = error.response?.statusCode ?? 0;
      switch (statusCode) {
        case 400:
          return "Bad request ($statusCode)";
        case 401:
          return "Unauthorized ($statusCode)";
        case 403:
          return "Forbidden ($statusCode)";
        case 404:
          return "Not found ($statusCode)";
        case 500:
          return "Internal server error ($statusCode)";
        case 503:
          return "Service unavailable ($statusCode)";
        default:
          return "Unexpected server error ($statusCode)";
      }
    }

    // Dio core/network errors
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return "Connection timeout";
      case DioExceptionType.sendTimeout:
        return "Send timeout";
      case DioExceptionType.receiveTimeout:
        return "Receive timeout";
      case DioExceptionType.cancel:
        return "Request cancelled";
      case DioExceptionType.connectionError:
        return "No internet connection";
      case DioExceptionType.unknown:
        return "Unknown error occurred";
      default:
        return "Something went wrong";
    }
  }
}
