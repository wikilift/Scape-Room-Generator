import 'package:get/get.dart';
import 'package:quiz_birthday/app/constants/app_constants.dart';

import 'package:quiz_birthday/app/controllers/sound_controller.dart';

class GameoverController extends GetxController {
  final player = Get.find<SoundController>();
  var points = 0;
  @override
  void onInit() {
    super.onInit();

    points = Get.arguments['points'];
  }

  @override
  void onReady() async {
    await player.stopBackgroundSound();
    Future.delayed(const Duration(milliseconds: 500));
    try {
      player.playSound(CONFIG_APP.gameOverMusic);
      super.onReady();
    } catch (e) {
      print(e);
    }
  }
}
