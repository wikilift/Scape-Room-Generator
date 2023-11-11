
import 'package:get/get.dart';
import '../controllers/win_controller.dart';


class WinBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WinController>(() => WinController());
  }
}