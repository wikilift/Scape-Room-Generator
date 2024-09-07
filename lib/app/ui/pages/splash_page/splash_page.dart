import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:quiz_birthday/app/constants/app_constants.dart';
import 'package:quiz_birthday/app/controllers/splash_controller.dart';
import 'package:quiz_birthday/app/ui/utils/style_utils.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    // ignore: unused_local_variable
    final c = controller;
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          SizedBox(
            width: screenSize.width,
            height: screenSize.height,
            child: Image(
              image: AssetImage(CONFIG_APP.splashWallpaper),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
              child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Loading...",
                          style: appStandarText(
                              color: Colors.white, fontSize: 50)),
                      const SizedBox(
                        height: 10,
                      ),
                      const SpinKitThreeBounce(
                        size: 100,
                        color: Colors.white,
                      )
                    ],
                  ))),
          SizedBox(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 110.0),
                child: Obx(() {
                  final offsetX = controller.animationValue.value;
                  final offsetY = controller.verticalAnimationValue.value;
                  return Transform.translate(
                    offset: Offset(offsetX, offsetY),
                    child: Image(
                      image: AssetImage(CONFIG_APP.loadingScreen),
                      fit: BoxFit.contain,
                      width: 450,
                      height: 520,
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
