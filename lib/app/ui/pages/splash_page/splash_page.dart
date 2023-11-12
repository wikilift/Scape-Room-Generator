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
            child: const Image(
              image: AssetImage("${ASSET_IMAGES_APP}opening.png"),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
              child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Loading...", style: appStandarText(color: Colors.white, fontSize: 50)),
                      const SizedBox(
                        height: 10,
                      ),
                      const SpinKitThreeBounce(
                        size: 100,
                        color: Colors.white,
                      )
                    ],
                  ))),
        ],
      ),
    ));
  }
}
