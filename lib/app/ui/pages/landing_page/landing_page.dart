import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_birthday/app/constants/app_constants.dart';
import 'package:quiz_birthday/app/ui/global_widgets/life_widget.dart';
import 'package:quiz_birthday/app/ui/utils/style_utils.dart';
import '../../../controllers/landing_controller.dart';

class LandingPage extends GetView<LandingController> {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size; // Obtén el tamaño de la pantalla

    return Scaffold(
      body: Container(
        constraints: const BoxConstraints(minHeight: 800, minWidth: 600),
        child: Stack(
          children: [
            SizedBox(
              width: screenSize.width,
              height: screenSize.height,
              child: const Image(
                image: AssetImage("${ASSET_IMAGES_APP}bk.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(() => Text(
                              "Points: ${controller.totalPoints}",
                              style: appStandarText(color: Colors.blue, fontSize: 50),
                            )),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Lifes:',
                                style: appStandarText(fontSize: 50, color: Colors.red),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: List.generate(controller.lifeStates.length, (index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: LifeIndicatorWidget(
                                    emptyLifeImagePath: "${ASSET_IMAGES_APP}fail.png",
                                    imagePath: "${ASSET_IMAGES_APP}life.png",
                                    index: index,
                                    controller: controller,
                                  ),
                                );
                              }),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Get.defaultDialog(
            title: "¿Te rindes?",
            contentPadding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            content: Text(
              "Veo que no puedes con el desafío, una lástima...",
              style: appStandarText(fontSize: H2),
            ),
            titlePadding: const EdgeInsets.all(20),
            barrierDismissible: false,
            //middleText: ,
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 100, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        onPressed: () => Get.back(),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8), color: Colors.green.withOpacity(0.8)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Con un par',
                              style: appStandarText(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: MaterialButton(
                        onPressed: () => exit(0),
                        child: Container(
                          decoration:
                              BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.red.withOpacity(0.8)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Soy cobarde',
                              style: appStandarText(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
            titleStyle: appStandarText(color: Colors.red, fontSize: H1),
          );
        },
        child: Icon(Icons.remove),
      ),
    );
  }
}
