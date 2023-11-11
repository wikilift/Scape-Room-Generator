import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_birthday/app/ui/utils/style_utils.dart';

class ExitButton extends StatelessWidget {
  const ExitButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 8,
      backgroundColor: Colors.orange,
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
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.green.withOpacity(0.8)),
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
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.red.withOpacity(0.8)),
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
      child: const Icon(
        Icons.exit_to_app_sharp,
        size: 30,
      ),
    );
  }
}
