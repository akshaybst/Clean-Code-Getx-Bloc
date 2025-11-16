import 'dart:io';
import 'package:dio/dio.dart';
import 'api_exceptions.dart';
import 'dio_injection.dart';

class DioHelper {
  final Dio _dio = getDio();

  /// Common headers
  Map<String, String> getHeaders({bool isAuthRequired = false}) {
    final headers = {
      'Content-Type': 'application/json',
    };

    if (isAuthRequired) {
      headers['Authorization'] = 'Bearer your_token_here';
    }

    return headers;
  }

  /// Dio Options
  Options getOptions({bool isAuthRequired = false}) {
    return Options(
      receiveDataWhenStatusError: true,
      contentType: 'application/json',
      sendTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 13),
      headers: getHeaders(isAuthRequired: isAuthRequired),
    );
  }

  /// GET
  Future<ApiResponse> getApi({
    required String url,
    bool isAuthRequired = false,
  }) async {
    try {
      final response = await _dio.get(
        url,
        options: getOptions(isAuthRequired: isAuthRequired),
      );
      return ApiResponse(statusCode: response.statusCode, data: response.data);
    } on DioException catch (e) {
      throw DioApiException(DioApiException.handleError(e));
    }
  }

  /// POST
  Future<ApiResponse> postApi({
    required String url,
    dynamic reqBody,
    bool isAuthRequired = false,
  }) async {
    try {
      final response = await _dio.post(
        url,
        data: reqBody,
        options: getOptions(isAuthRequired: isAuthRequired),
      );
      return ApiResponse(statusCode: response.statusCode, data: response.data);
    } on DioException catch (e) {
      throw DioApiException(DioApiException.handleError(e));
    }
  }

  /// PATCH
  Future<ApiResponse> patchApi({
    required String url,
    dynamic reqBody,
    bool isAuthRequired = false,
  }) async {
    try {
      final response = await _dio.patch(
        url,
        data: reqBody,
        options: getOptions(isAuthRequired: isAuthRequired),
      );
      return ApiResponse(statusCode: response.statusCode, data: response.data);
    } on DioException catch (e) {
      throw DioApiException(DioApiException.handleError(e));
    }
  }

  /// DELETE
  Future<ApiResponse> deleteApi({
    required String url,
    dynamic reqBody,
    bool isAuthRequired = false,
  }) async {
    try {
      final response = await _dio.delete(
        url,
        data: reqBody,
        options: getOptions(isAuthRequired: isAuthRequired),
      );
      return ApiResponse(statusCode: response.statusCode, data: response.data);
    } on DioException catch (e) {
      throw DioApiException(DioApiException.handleError(e));
    }
  }

  /// Multipart/FormData (e.g., Profile Update)
  Future<ApiResponse> updateProfileApi({
    required String url,
    required Map<String, dynamic> reqBody,
    File? image,
    bool isAuthRequired = false,
  }) async {
    try {
      final formData = FormData.fromMap({
        ...reqBody,
        if (image != null)
          'userFile': await MultipartFile.fromFile(
            image.path,
            filename: image.path.split('/').last,
          ),
      });

      final options = getOptions(isAuthRequired: isAuthRequired).copyWith(
        contentType: 'multipart/form-data',
      );

      final response = await _dio.post(
        url,
        data: formData,
        options: options,
      );
      return ApiResponse(statusCode: response.statusCode, data: response.data);
    } on DioException catch (e) {
      throw DioApiException(DioApiException.handleError(e));
    }
  }
}



class ApiResponse {
  final int? statusCode;
  final dynamic data;

  ApiResponse({this.statusCode, this.data});
}
