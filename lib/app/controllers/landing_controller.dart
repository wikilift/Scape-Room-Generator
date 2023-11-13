//import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_birthday/app/constants/app_constants.dart';
import 'package:quiz_birthday/app/controllers/sound_controller.dart';
import 'package:quiz_birthday/app/routes/pages.dart';
import 'package:quiz_birthday/app/ui/utils/style_utils.dart';
import 'dart:math';

class LandingController extends GetxController {
  final lifeStates = [].obs;
  final totalLives = 3.0.obs;
  final totalPoints = 0.obs;
  // final challenges = <Challenge>[].obs;
  final currentIndex = 0.obs;
  final currentWallPaperIdx = 0.obs;
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

  int randomWithExclusion(int min, int max, int exclude) {
    var rnd = Random();
    int result;

    do {
      result = min + rnd.nextInt(max - min);
    } while (result == exclude);

    return result;
  }

  @override
  void onInit() async {
    super.onInit();
    player.challenges.addAll(CHALLENGES);
    lifeStates.addAll(List.generate(totalLives.round(), (_) => false));
    maxPoints = player.challenges.length;
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
      middleText: player.challenges[currentIndex.value].help,
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
    final currentChallengue = player.challenges[currentIndex.value];
    String trimmedInput = input.trim().toLowerCase();
    if (currentChallengue.contains) {
      bool find = false;
      final solves =
          currentChallengue.solve.split('*').map((s) => s.toLowerCase().trim());

      if (trimmedInput.isNotEmpty) {
        for (final solve in solves) {
          RegExp exp = RegExp(r'\b' + RegExp.escape(solve) + r'\b');
          if (exp.hasMatch(trimmedInput)) {
            find = true;
            break;
          }
        }
      }

      if (find) {
        currentIndex.value++;
        totalPoints.value++;
        currentWallPaperIdx.value = randomWithExclusion(
            0, IMAGES_BACKGROUND.length - 1, currentWallPaperIdx.value);
        if (totalPoints.value == maxPoints) {
          player.stopBackgroundSound();
          Future.microtask(() => Get.offAllNamed(Routes.WIN_PAGE));
        } else {
          Future.microtask(
              () => launchSnackBar("¡Correcto!", "Pin de regalo :)"));
        }
      } else {
        deleteLife(1);
        await player.playSound("kick.mp3");
      }
    } else {
      if (input.toLowerCase().trim() == currentChallengue.solve.toLowerCase()) {
        currentIndex.value++;
        totalPoints.value++;
        await player.playSound("coin.mp3");
        currentWallPaperIdx.value = randomWithExclusion(
            0, IMAGES_BACKGROUND.length - 1, currentWallPaperIdx.value);
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
