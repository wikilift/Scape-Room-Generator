import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:quiz_birthday/app/routes/pages.dart';
import 'dart:math' as math;

class SplashController extends GetxController
    with GetSingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<Offset>? horizontalAnimation;

  final animationValue = 0.0.obs;
  final verticalAnimationValue = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      duration: const Duration(seconds: 6),
      vsync: this,
    );

    horizontalAnimation = Tween<Offset>(
      begin: const Offset(0.0, 0.0),
      end: const Offset(2.0, 0.0),
    ).animate(CurvedAnimation(
      parent: animationController!,
      curve: Curves.linear,
    ));

    animationController!.addListener(() {
      final screenWidth = Get.width;
      animationValue.value =
          (horizontalAnimation!.value.dx - 0.5) * screenWidth;

      verticalAnimationValue.value =
          25 * math.sin(animationController!.value * 2 * math.pi);
    });

    animationController!.addListener(() {
      final screenWidth = Get.width;
      animationValue.value =
          (horizontalAnimation!.value.dx - 0.5) * screenWidth;

      verticalAnimationValue.value =
          25 * math.sin(animationController!.value * 8 * math.pi);
    });

    animationController!.repeat(reverse: false);
  }

  @override
  void onReady() async {
    await Future.delayed(const Duration(seconds: 4))
        .then((value) => Get.offAllNamed(Routes.LANDING));
    super.onReady();
  }

  @override
  void onClose() {
    animationController?.dispose();
    super.onClose();
  }
}
