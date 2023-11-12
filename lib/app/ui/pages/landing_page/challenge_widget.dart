import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:quiz_birthday/app/controllers/landing_controller.dart';
import 'package:quiz_birthday/app/ui/utils/style_utils.dart';

class ChallengeWidget extends StatelessWidget {
  const ChallengeWidget({super.key, required this.controller});
  final LandingController controller;
  @override
  Widget build(BuildContext context) {
    final txt = TextEditingController();
    return Obx(() => (controller.challenges.isEmpty)
        ? const SpinKitCircle(
            color: Colors.blue,
            size: 30,
          )
        : Container(
            constraints: const BoxConstraints(maxHeight: 600, maxWidth: 1200),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    color: Colors.white.withOpacity(0.8),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SelectableText(
                        controller.challenges[controller.currentIndex.value].text,
                        style: appStandarText(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: txt,
                          style: appStandarText(color: Colors.blue),
                          decoration: inputFieldDecoration(
                              label: "Answer",
                              hint: "Insert your solve",
                              icon: Icons.question_answer,
                              colorBorder: Colors.red),
                        ),
                      ),
                      IconButton(
                          onPressed: () => controller.helPressed(),
                          icon: const Icon(
                            Icons.help,
                            color: Colors.red,
                            size: 40,
                          ))
                    ],
                  ),
                  const SizedBox(height: 14),
                  MaterialButton(
                    onPressed: () {
                      controller.submitpressed(txt.text);
                      txt.clear();
                    },
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.red),
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
            ),
          ));
  }
}
