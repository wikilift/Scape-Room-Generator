import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_birthday/app/constants/app_constants.dart';
import 'package:quiz_birthday/app/controllers/win_controller.dart';
import 'package:quiz_birthday/app/ui/utils/style_utils.dart';

class WinPage extends GetView<WinController> {
  const WinPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          width: screenSize.width,
          height: screenSize.height,
          child: const Image(
            image: AssetImage("${ASSET_IMAGES_APP}win.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Text(
                      CONFIG_APP.winMessage,
                      style: appStandarText(color: Colors.white, fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Text(
                      CONFIG_APP.whereIsPresent,
                      style: appStandarText(color: Colors.red, fontSize: 40),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Obx(() => Transform.scale(
                        scale: controller.animationValue.value,
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Text(
                              "¡MUCHAS FELICIDADES ${CONFIG_APP.birthdayTarget}!",
                              style: appStandarText(
                                  color: Colors.blue, fontSize: 40)),
                        ),
                      )),
                  MaterialButton(
                    onPressed: () => exit(0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.orange.withOpacity(0.8)),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'Salir',
                          style: appStandarText(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
