import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:quiz_birthday/app/controllers/landing_controller.dart';
import 'package:quiz_birthday/app/ui/pages/landing_page/widgets/pdf_viewer.dart';
import 'package:quiz_birthday/app/ui/utils/style_utils.dart';

class ChallengeWidget extends StatelessWidget {
  const ChallengeWidget({super.key, required this.controller});
  final LandingController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() => (controller.challenges.isEmpty)
        ? const SpinKitCircle(
            color: Colors.blue,
            size: 30,
          )
        : Container(
            constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.65,
                maxWidth: MediaQuery.of(context).size.width * 0.9),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  if (controller.currentIndex.value < controller.maxPoints)
                    Card(
                      color: Colors.white.withOpacity(0.8),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Obx(() {
                              return SelectableText(
                                controller.displayedText.value,
                                style: appStandarText(),
                              );
                            }),
                          ),
                          if (controller
                                  .challenges[controller.currentIndex.value]
                                  .imgPath !=
                              "NaN")
                            Container(
                                constraints: const BoxConstraints(
                                    maxHeight: 600, maxWidth: 1200),
                                child: Image.asset(controller
                                    .challenges[controller.currentIndex.value]
                                    .imgPath)),
                          if (controller
                              .challenges[controller.currentIndex.value].pdf)
                            PdfViewer(
                              pdfPath: controller
                                  .challenges[controller.currentIndex.value]
                                  .pdfPath,
                            )
                        ],
                      ),
                    ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ));
  }
}
