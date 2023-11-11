import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:quiz_birthday/app/constants/app_constants.dart';

class LandingController extends GetxController {
  final lifeStates = [].obs;
  final totalLives = 3.0.obs;
  final totalPoints = 0.obs;
  AudioPlayer? player;
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
    lifeStates.addAll(List.generate(totalLives.round(), (_) => false));
    /*    try {
      player = AudioPlayer(playerId: "backGround");

      await player!.play(AssetSource("${ASSET_SOUNDS}soundtheme.mp3"));
      player!.setReleaseMode(ReleaseMode.loop);
    } catch (e) {
      print(e);
    } */
  }

  void changeLifeState(int index) {
    if (index >= 0 && index < lifeStates.length) {
      lifeStates[index] = !lifeStates[index];
    }
  }

  void deleteLife(double amount) {
    if (totalLives.value > 0) {
      totalLives.value -= amount;

      int fullLives = totalLives.round();
      for (int i = 0; i < lifeStates.length; i++) {
        lifeStates[i] = i >= fullLives;
      }
    }
  }
}
