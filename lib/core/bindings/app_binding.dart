
import '../../routes/widgets.dart';

class AppBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
    Get.lazyPut(() => HomeController());
  }
}
