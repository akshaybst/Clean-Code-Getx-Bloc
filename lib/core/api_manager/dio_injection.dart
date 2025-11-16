
import 'dart:convert';
import 'package:clean_code_getx_bloc_mvvm/utils/enums.dart';
import 'package:clean_code_getx_bloc_mvvm/utils/animation_snackbar.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart' as con;
import '../../utils/custom_print.dart';
import 'api_exceptions.dart';

Dio getDio () {
  Dio dio = Dio();

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (RequestOptions options, handler) {
        customPrint("API URL =====>>>>>> ${options.uri}");
        customPrint("Header =====>>>>>> ${options.headers}");
        customPrint("Request Body =====>>>>>> ${jsonEncode(options.data)}");
        return handler.next(options);
      },
      onResponse: (Response response, ResponseInterceptorHandler handler){
        customPrint("API response =====>>>>>> ${response.data}");
        return handler.next(response);
      },
      onError: (DioException error, handler) {
        final message = DioApiException.handleError(error);
        AnimationSnackBar().openSnackBar(context: con.Get.context!, message: message.toString(), type: SnackBarType.error);

        // CustomSnackBar.show(
        //   title: "Error",
        //   message: message,
        //   type: SnackBarType.error,
        // );
        customPrint("Status Code =====>>>>>> ${error.response?.statusCode??""}");
        customPrint("Header =====>>>>>> ${error.response?.data??""}");
        return handler.next(error);
      }
    ),
  );

  return dio;
}