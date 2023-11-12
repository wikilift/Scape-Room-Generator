import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WinController extends GetxController with GetSingleTickerProviderStateMixin {
  AnimationController? animationController;
  RxDouble animationValue = 1.0.obs;

  @override
  void onInit() {
    super.onInit();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    animationController!.addListener(() {
      animationValue.value = animationController!.value;
    });

    animationController!.repeat(reverse: true);
  }

  @override
  void onClose() {
    animationController?.dispose();
    super.onClose();
  }
}
