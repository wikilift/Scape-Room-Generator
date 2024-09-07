import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_birthday/app/controllers/landing_controller.dart';

class LifeIndicatorWidget extends StatelessWidget {
  final String imagePath;
  final String emptyLifeImagePath;
  final int index;
  final LandingController controller;

  const LifeIndicatorWidget({
    Key? key,
    required this.imagePath,
    required this.emptyLifeImagePath,
    required this.index,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      bool isFullLife = index < controller.totalLives.floor();
      bool isHalfLife = index == controller.totalLives.floor() &&
          controller.totalLives.value % 1 != 0;

      String displayedImagePath;
      double widthFactor;

      if (isFullLife) {
        displayedImagePath = imagePath;
        widthFactor = 1.0;
      } else if (isHalfLife) {
        displayedImagePath = imagePath;
        widthFactor = 0.5;
      } else {
        displayedImagePath = emptyLifeImagePath;
        widthFactor = 1.0;
      }

      return ClipOval(
        child: Align(
          alignment: Alignment.centerLeft,
          widthFactor: widthFactor,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 60,
            child: Image(
              image: AssetImage(displayedImagePath),
              fit: BoxFit.cover, height: 140, // Add foregroundImage
            ),
          ),
        ),
      );
    });
  }
}
