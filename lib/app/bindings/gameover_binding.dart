
import 'package:get/get.dart';
import '../controllers/gameover_controller.dart';


class GameoverBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GameoverController>(() => GameoverController());
  }
}