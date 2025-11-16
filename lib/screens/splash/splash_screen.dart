
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller;
    return const Scaffold(
      backgroundColor: Colors.teal,
      body: Center(child: Text("Splash Screen", style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.w700),),),
    );
  }
}
