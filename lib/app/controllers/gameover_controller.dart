import 'package:get/get.dart';

import 'package:quiz_birthday/app/controllers/sound_controller.dart';

class GameoverController extends GetxController {
  @override
  void onReady() async {
    final player = Get.find<SoundController>();
    await Future.delayed(const Duration(milliseconds: 500));
    await player.playSound("die.mp3");
    super.onReady();
  }
}
