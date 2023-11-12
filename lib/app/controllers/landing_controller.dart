//import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_birthday/app/constants/app_constants.dart';
import 'package:quiz_birthday/app/controllers/sound_controller.dart';
import 'package:quiz_birthday/app/data/models/challenge.dart';
import 'package:quiz_birthday/app/helpers/encrypter.dart';
import 'package:quiz_birthday/app/routes/pages.dart';
import 'package:quiz_birthday/app/ui/utils/style_utils.dart';

class LandingController extends GetxController {
  final lifeStates = [].obs;
  final totalLives = 3.0.obs;
  final totalPoints = 0.obs;
  final challenges = <Challenge>[].obs;
  final currentIndex = 0.obs;
  late final int maxPoints;
  final txt = TextEditingController();
  final player = Get.find<SoundController>();
  RxDouble volume = 1.0.obs;
  playSound(String asset) async {
    final p = AudioPlayer(playerId: "generic");
    try {
      await p.play(AssetSource("$ASSET_SOUNDS$asset"));
    } catch (e) {
      print(e);
    }
  }

  @override
  void onInit() async {
    super.onInit();
    challenges.addAll(await CryptoManager.main());
    lifeStates.addAll(List.generate(totalLives.round(), (_) => false));
    maxPoints = challenges.length;
  }

  void changeLifeState(int index) {
    if (index >= 0 && index < lifeStates.length) {
      lifeStates[index] = !lifeStates[index];
    }
  }

  void deleteLife(double amount) async {
    if (totalLives.value > 1) {
      totalLives.value -= amount;

      int fullLives = totalLives.round();
      for (int i = 0; i < lifeStates.length; i++) {
        lifeStates[i] = i >= fullLives;
      }
    } else {
      await player.stopBackgroundSound();
      Get.offAllNamed(Routes.GAME_OVER);
      /*   await player
          .playSound("die.mp3")
          .then((value) => */
    }
  }

  helPressed() async {
    await Get.defaultDialog(
      title: "Ayuda",
      middleText: challenges[currentIndex.value].help,
      titleStyle: appStandarText(color: Colors.red),
      middleTextStyle: appStandarText(),
      actions: [
        MaterialButton(
          onPressed: () => Get.back(),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.red),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Close',
                style: appStandarText(),
              ),
            ),
          ),
        )
      ],
    );
    deleteLife(0.5);
    await player.playSound("kick.mp3");
  }

  submitpressed(String input) async {
    final currentChallengue = challenges[currentIndex.value];
    if (currentChallengue.contains) {
      bool find = false;
      final solves = currentChallengue.solve.split('*');
      for (final i in solves) {
        if (i.toLowerCase().trim().contains(input.trim().toLowerCase())) {
          currentIndex.value++;
          totalPoints.value++;
          if (totalPoints.value == maxPoints) {
            player.stopBackgroundSound();
            Future.microtask(() => Get.offAllNamed(Routes.WIN_PAGE));
            return;
          }
          Future.microtask(
              () => launchSnackBar("¡Correcto!", "Pin de regalo :)"));

          find = true;
          break;
        }
      }
      if (!find) {
        await player.playSound("kick.mp3");
        deleteLife(1);
      }
    } else {
      if (input.toLowerCase().trim() == currentChallengue.solve.toLowerCase()) {
        currentIndex.value++;
        totalPoints.value++;
        await player.playSound("coin.mp3");

        if (totalPoints.value == maxPoints) {
          player.stopBackgroundSound();
          Future.microtask(() => Get.offAllNamed(Routes.WIN_PAGE));
          return;
        }
        Future.microtask(
            () => launchSnackBar("¡Correcto!", "Pin de regalo :)"));
      } else {
        deleteLife(1);
        await player.playSound("kick.mp3");
      }
    }
    txt.clear();
  }
}
