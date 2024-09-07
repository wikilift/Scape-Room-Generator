import 'package:flutter/material.dart';
import 'package:quiz_birthday/app/controllers/landing_controller.dart';
import 'package:quiz_birthday/app/ui/utils/style_utils.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
    required this.controller,
  });

  final LandingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1200),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextField(
              controller: controller.txt,
              onSubmitted: (_) => controller.submitpressed(controller.txt.text),
              style: appStandarText(color: Colors.blue),
              decoration: inputFieldDecoration(
                  label: "Respuesta",
                  hint: "Introduce tu solución",
                  icon: Icons.question_answer,
                  colorBorder: Colors.red),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () => controller.helPressed(),
              child: const CircleAvatar(
                backgroundColor: Colors.red,
                radius: 40,
                child: Icon(
                  Icons.help,
                  color: Colors.white,
                  size: 80,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
