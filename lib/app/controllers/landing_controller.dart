import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:quiz_birthday/app/constants/app_constants.dart';
import 'package:quiz_birthday/app/controllers/sound_controller.dart';
import 'package:quiz_birthday/app/data/models/challenge.dart';
import 'package:quiz_birthday/app/routes/pages.dart';
import 'package:quiz_birthday/app/ui/utils/style_utils.dart';
import 'dart:math';

class LandingController extends GetxController {
  final lifeStates = [].obs;
  final totalLives = 3.0.obs;
  final totalPoints = 0.obs;
  final challenges = <Challenge>[].obs;
  final currentIndex = 0.obs;
  final currentWallPaperIdx = 0.obs;
  late final int maxPoints;
  final txt = TextEditingController();
  final player = Get.find<SoundController>();
  RxDouble volume = 1.0.obs;
  final FlutterTts flutterTts = FlutterTts();

  final displayedText = "".obs;
  var brokeFor = false;
  @override
  void onInit() async {
    super.onInit();
    challenges.addAll(CONFIG_APP.challengeList);
    lifeStates.addAll(List.generate(totalLives.round(), (_) => false));
    maxPoints = challenges.length;
    await flutterTts.setLanguage("es-ES");
    await flutterTts.setPitch(1.6);
    await flutterTts.setVolume(1.0);
    volume.value = 0.4;
    player.backgroundPlayer?.setVolume(volume.value);
    _animateTextAndSpeak(challenges[currentIndex.value].text);
  }

  Future<void> _animateTextAndSpeak(String text) async {
    flutterTts.speak(text);

    displayedText.value = "";
    for (int i = 0; i < text.length; i++) {
      displayedText.value += text[i];
      await Future.delayed(const Duration(milliseconds: 15));
    }
  }

  void updateTextForCurrentChallenge() {
    String newText = challenges[currentIndex.value].text;
    _animateTextAndSpeak(newText);
  }

  void changeLifeState(int index) {
    if (index >= 0 && index < lifeStates.length) {
      lifeStates[index] = !lifeStates[index];
    }
  }

  String removeAccents(String text) {
    final accentsMap = {
      'á': 'a',
      'é': 'e',
      'í': 'i',
      'ó': 'o',
      'ú': 'u',
      'ü': 'u',
      'Á': 'a',
      'É': 'e',
      'Í': 'i',
      'Ó': 'o',
      'Ú': 'u',
      'Ü': 'u'
    };

    return text.split('').map((char) {
      return accentsMap[char] ?? char;
    }).join('');
  }

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

  void deleteLife(double amount) async {
    if (totalLives.value > 1) {
      totalLives.value -= amount;

      int fullLives = totalLives.round();
      for (int i = 0; i < lifeStates.length; i++) {
        lifeStates[i] = i >= fullLives;
      }
    } else {
      flutterTts.stop();
      await Future.microtask(() => Get.offAllNamed(Routes.GAME_OVER,
          arguments: {"points": totalPoints.value}));
    }
  }

  helPressed() async {
    final helpChallenge = challenges[currentIndex.value];
    flutterTts.speak((helpChallenge.helpIdx < helpChallenge.help.length)
        ? helpChallenge.help[helpChallenge.helpIdx]
        : "No hay más pistas");

    await Get.defaultDialog(
      title: "Ayuda",
      middleText: helpChallenge.helpIdx < helpChallenge.help.length
          ? helpChallenge.help[helpChallenge.helpIdx].toString()
          : "No hay más pistas",
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
                'Cerrar',
                style: appStandarText(),
              ),
            ),
          ),
        )
      ],
    );
    if (helpChallenge.helpIdx < helpChallenge.help.length) {
      helpChallenge.helpIdx++;
      deleteLife(0.5);
      await player.playSound(CONFIG_APP.failMusic);
    }
  }

  submitpressed(String input) async {
    final currentChallengue = challenges[currentIndex.value];
    String trimmedInput = removeAccents(input.trim().toLowerCase());

    if (currentChallengue.contains) {
      bool find = false;
      final solves = currentChallengue.solve
          .split('*')
          .map((s) => removeAccents(s.toLowerCase().trim()));

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
        await player.playSound(CONFIG_APP.assertMusic);
        currentWallPaperIdx.value = randomWithExclusion(
            0, CONFIG_APP.wallpaperList.length - 1, currentWallPaperIdx.value);

        if (totalPoints.value == maxPoints) {
          player.stopBackgroundSound();
          await flutterTts.stop();
          Future.microtask(() => Get.offAllNamed(Routes.WIN_PAGE));
        } else {
          flutterTts.stop();
          updateTextForCurrentChallenge();
          Future.microtask(
              () => launchSnackBar("¡Correcto!", "Pin de regalo :)"));
        }
      } else {
        deleteLife(1);
        await player.playSound(CONFIG_APP.failMusic);
      }
    } else {
      if (input.toLowerCase().trim() == currentChallengue.solve.toLowerCase()) {
        brokeFor = true;
        currentIndex.value++;
        totalPoints.value++;
        await player.playSound(CONFIG_APP.assertMusic);
        currentWallPaperIdx.value = randomWithExclusion(
            0, CONFIG_APP.wallpaperList.length - 1, currentWallPaperIdx.value);
        if (totalPoints.value == maxPoints) {
          player.stopBackgroundSound();
          await flutterTts.stop();
          Future.microtask(() => Get.offAllNamed(Routes.WIN_PAGE));
          return;
        }
        brokeFor = false;
        flutterTts.stop();
        updateTextForCurrentChallenge();
        Future.microtask(
            () => launchSnackBar("¡Correcto!", "Pin de regalo :)"));
      } else {
        deleteLife(1);
        await player.playSound(CONFIG_APP.failMusic);
      }
    }
    txt.clear();
  }
}
