
import 'package:clean_code_getx_bloc_mvvm/services/storage_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_routes.dart';

class AuthMiddleware extends GetMiddleware {

  @override
  RouteSettings? redirect(String? route) {
    final loggedIn = StorageService.isLoggedIn;
    if (!loggedIn && route != Routes.login) {
      return const RouteSettings(name: Routes.login);
    }
    return null;
  }
}
