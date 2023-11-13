import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:quiz_birthday/app/constants/app_constants.dart';
import 'package:quiz_birthday/app/data/models/challenge.dart';

class SoundController extends GetxService {
  AudioPlayer? backgroundPlayer;
  final challenges = <Challenge>[].obs;

  @override
  void onInit() async {
    super.onInit();
    backgroundPlayer = AudioPlayer(playerId: "backGround");
    await playBackgroundSound("${ASSET_SOUNDS}soundtheme.mp3");

    // challenges.addAll(CHALLENGES);
  }

  Future<void> playSound(String asset) async {
    AudioPlayer player = AudioPlayer(playerId: "generic");
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

  Future<void> playBackgroundSound(String asset) async {
    try {
      await backgroundPlayer!.play(AssetSource(asset));
      backgroundPlayer!.setReleaseMode(ReleaseMode.loop);
    } catch (e) {
      print(e);
    }
  }

  @override
  void onClose() {
    backgroundPlayer?.stop();
    backgroundPlayer?.dispose();
    super.onClose();
  }

  stopBackgroundSound() async {
    backgroundPlayer?.stop();
  }
}
