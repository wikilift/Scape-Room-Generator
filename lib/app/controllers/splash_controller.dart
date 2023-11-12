import 'package:get/get.dart';
import 'package:quiz_birthday/app/routes/pages.dart';

class SplashController extends GetxController {
  @override
  void onReady() async {
    await Future.delayed(const Duration(seconds: 4)).then((value) => Get.offAllNamed(Routes.LANDING));
    super.onReady();
  }
}
