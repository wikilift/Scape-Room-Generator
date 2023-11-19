import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_birthday/app/constants/app_constants.dart';

class SoundController extends GetxService {
  AudioPlayer? backgroundPlayer;

  @override
  void onInit() async {
    super.onInit();
    if (!DEBUG) {
      backgroundPlayer = AudioPlayer(playerId: "backGround");
      await playBackgroundSound(CONFIG_APP.loopMusic);
    }
  }

  Future<void> playSound(String asset) async {
    if (!DEBUG) {
      AudioPlayer player = AudioPlayer(playerId: UniqueKey().toString());
      try {
        await player.play(AssetSource("sounds/$asset"));
        await player.setReleaseMode(ReleaseMode.stop);
        player.onPlayerComplete.listen((event) {
          player.dispose();
        });
      } catch (e) {
        print(e);
      }
    }
  }

  Future<void> playBackgroundSound(String asset) async {
    if (!DEBUG) {
      try {
        await backgroundPlayer!.play(AssetSource(asset));
        backgroundPlayer!.setReleaseMode(ReleaseMode.loop);
      } catch (e) {
        print(e);
      }
    }
  }

  @override
  void onClose() {
    if (!DEBUG) {
      backgroundPlayer?.stop();
      backgroundPlayer?.dispose();
    }

    super.onClose();
  }

  stopBackgroundSound() async {
    if (!DEBUG) {
      backgroundPlayer?.stop();
    }
  }
}
