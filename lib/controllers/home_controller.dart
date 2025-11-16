
import 'package:clean_code_getx_bloc_mvvm/routes/app_routes.dart';
import 'package:clean_code_getx_bloc_mvvm/utils/custom_print.dart';
import 'package:get/get.dart';

import '../services/storage_service.dart';

class HomeController extends GetxController {
  // var loading = true.obs;
  // var productsDataModel = ProductsDataModel().obs;
  // var usersDataModel = <UserDataModel>[].obs;
  //
  // @override
  // void onInit() {
  //   super.onInit();
  //   getProductsData();
  //   getUsersData();
  // }
  //
  // Future<void> getProductsData() async {
  //   try {
  //     loading.value = true;
  //     final value = await Repository().productsRepository();
  //     productsDataModel.value = value;
  //   } catch (error) {
  //     print("Error : $error");
  //   } finally {
  //     loading.value = false;
  //   }
  // }
  //
  // Future<void> getUsersData() async {
  //   try {
  //     loading.value = true;
  //     final value = await Repository().usersRepository();
  //     usersDataModel.value = value;
  //   } catch (error) {
  //     print("Error : $error");
  //   } finally {
  //     loading.value = false;
  //   }
  // }

  void logout() async{
    customPrint("logout app");
    await StorageService.clear();
    Get.offAllNamed(Routes.splash);
  }


}
