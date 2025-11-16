
import 'package:clean_code_getx_bloc_mvvm/constants/app_constants.dart';
import 'package:clean_code_getx_bloc_mvvm/controllers/home_controller.dart';
import 'package:clean_code_getx_bloc_mvvm/services/storage_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(StorageService.getString(AppConstants.name) ?? ""),
            Text(StorageService.getString(AppConstants.email) ?? ""),
            Text("Token : ${StorageService.getString(AppConstants.token).toString().substring(0, 30)}"),
            const SizedBox(height: 40),
            ElevatedButton(onPressed: ()=> controller.logout(), child: const Text("Logout")),
          ],
        ),
      ),
    );
  }
}
