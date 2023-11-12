import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_birthday/app/constants/app_constants.dart';
import 'package:quiz_birthday/app/controllers/landing_controller.dart';
import 'package:quiz_birthday/app/ui/global_widgets/exit_button.dart';
import 'package:quiz_birthday/app/ui/global_widgets/life_widget.dart';
import 'package:quiz_birthday/app/ui/pages/landing_page/widgets/challenge_widget.dart';
import 'package:quiz_birthday/app/ui/pages/landing_page/widgets/footer.dart';
import 'package:quiz_birthday/app/ui/utils/style_utils.dart';

class LandingPage extends GetView<LandingController> {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        constraints: const BoxConstraints(minHeight: 1000, minWidth: 600),
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
            Obx(() => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Obx(() => Text(
                                  "Points: ${controller.totalPoints}",
                                  style: appStandarText(
                                      color: Colors.blue, fontSize: 50),
                                )),
                            Obx(() => Column(
                                  children: [
                                    Text("Volume",
                                        style: appStandarText(
                                            color: Colors.orange)),
                                    Slider(
                                        value: controller.volume.value,
                                        min: 0.0,
                                        max: 1.0,
                                        //divisions: 10,
                                        onChanged: (double value) {
                                          try {
                                            controller.volume.value = value;
                                            controller.player.backgroundPlayer
                                                ?.setVolume(
                                                    controller.volume.value);
                                          } catch (e) {
                                            print(e);
                                          }
                                        }),
                                  ],
                                )),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Lifes:',
                                    style: appStandarText(
                                        fontSize: 50, color: Colors.red),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: List.generate(
                                      controller.lifeStates.length, (index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: LifeIndicatorWidget(
                                        emptyLifeImagePath:
                                            "${ASSET_IMAGES_APP}fail.png",
                                        imagePath:
                                            "${ASSET_IMAGES_APP}life.png",
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
                      const SizedBox(height: 60),
                      ChallengeWidget(controller: controller),
                      Footer(controller: controller),
                      const SizedBox(height: 14),
                      MaterialButton(
                        onPressed: () =>
                            controller.submitpressed(controller.txt.text),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.red),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Submit',
                              style: appStandarText(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
      floatingActionButton: const ExitButton(),
    );
  }
}
