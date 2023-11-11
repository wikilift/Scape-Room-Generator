// import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
// import 'package:quiz_birthday/app/constants/app_constants.dart';

class LandingController extends GetxController {
  final lifeStates = [].obs;
  final totalLives = 3.0.obs;
  final totalPoints = 0.obs;
  @override
  void onInit() async {
    super.onInit();
    lifeStates.addAll(List.generate(totalLives.round(), (_) => false));
    // final player = AudioPlayer();
    // await player.play(AssetSource("${ASSET_SOUNDS}soundtheme.mp3"));
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
