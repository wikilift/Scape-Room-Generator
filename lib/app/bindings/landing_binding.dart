
import 'package:get/get.dart';
import '../controllers/landing_controller.dart';


class LandingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LandingController>(() => LandingController());
  }
}