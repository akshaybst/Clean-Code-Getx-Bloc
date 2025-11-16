
import 'package:clean_code_getx_bloc_mvvm/services/storage_service.dart';
import 'package:get/get.dart';
import '../../routes/app_routes.dart';

class SplashController extends GetxController {

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 2), () {
      final isLoggedIn = StorageService.isLoggedIn;
      if (isLoggedIn) {
        Get.offAllNamed(Routes.home);
      } else {
        Get.offAllNamed(Routes.login);
      }
    });
  }

}
