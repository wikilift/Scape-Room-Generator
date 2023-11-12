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
        children: [
          Expanded(
            child: TextField(
              controller: controller.txt,
              style: appStandarText(color: Colors.blue),
              decoration: inputFieldDecoration(
                  label: "Answer", hint: "Insert your solve", icon: Icons.question_answer, colorBorder: Colors.red),
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
    );
  }
}
