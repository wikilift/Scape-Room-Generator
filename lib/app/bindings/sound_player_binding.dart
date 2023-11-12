import 'package:get/get.dart';
import 'package:quiz_birthday/app/controllers/sound_controller.dart';

class SoundPlayerBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<SoundController>(SoundController(), permanent: true);
  }
}
