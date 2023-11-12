import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_birthday/app/constants/app_constants.dart';
import 'package:quiz_birthday/app/ui/utils/style_utils.dart';
import '../../../controllers/gameover_controller.dart';

class GameoverPage extends GetView<GameoverController> {
  const GameoverPage({super.key});

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
            image: AssetImage("${ASSET_IMAGES_APP}gameover.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 80.0),
                    child: Text(
                        "¡Vaya, parece que esta vez el destino no estuvo de tu lado!\n Pero no te rindas, la gloria aguarda a los valientes que intentan una vez más. \n¿Listo para la revancha? ",
                        textAlign: TextAlign.center,
                        style: appStandarText(color: Colors.red, fontSize: 20)),
                  ),
                  MaterialButton(
                    onPressed: () => exit(0),
                    child: Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.red.withOpacity(0.8)),
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
