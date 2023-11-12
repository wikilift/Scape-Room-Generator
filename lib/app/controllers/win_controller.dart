import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_birthday/app/constants/app_constants.dart';
import 'package:quiz_birthday/app/controllers/sound_controller.dart';

class WinController extends GetxController
    with GetSingleTickerProviderStateMixin {
  AnimationController? animationController;
  RxDouble animationValue = 1.0.obs;

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
    player.playBackgroundSound("${ASSET_SOUNDS}ending.mp3");
  }

  @override
  void onClose() {
    animationController?.dispose();
    super.onClose();
  }
}
