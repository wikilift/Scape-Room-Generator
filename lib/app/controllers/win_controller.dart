import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:quiz_birthday/app/constants/app_constants.dart';
import 'package:quiz_birthday/app/controllers/sound_controller.dart';

class WinController extends GetxController
    with GetSingleTickerProviderStateMixin {
  AnimationController? animationController;
  RxDouble animationValue = 1.0.obs;
  final FlutterTts flutterTts = FlutterTts();

  @override
  void onReady() async {
    super.onReady();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    animationController!.addListener(() {
      animationValue.value = animationController!.value;
    });

    animationController!.repeat(reverse: true);
    final player = Get.find<SoundController>();
    await Future.delayed(const Duration(milliseconds: 1));
    player.playBackgroundSound(CONFIG_APP.winMusic);
    await flutterTts.setLanguage("es-ES");
    await flutterTts.setPitch(1.5);
    await flutterTts.setVolume(1.0);
    flutterTts.speak(CONFIG_APP.winMessage);
    flutterTts.speak("¡Has ganado un ${CONFIG_APP.whereIsPresent}!");
    flutterTts.speak("¡MUCHAS FELICIDADES ${CONFIG_APP.birthdayTarget}!");
  }

  @override
  void onClose() {
    animationController?.dispose();
    super.onClose();
  }
}
