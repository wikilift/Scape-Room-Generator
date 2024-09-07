import 'package:quiz_birthday/app/constants/app_constants.dart';
import 'package:quiz_birthday/app/data/models/challenge.dart';

class Config {
  final String bkMusic,
      imgLife,
      imgFail,
      loadingScreen,
      font,
      splashWallpaper,
      whereIsPresent,
      birthdayTarget,
      winMessage,
      loopMusic,
      failMusic,
      gameOverMusic,
      winMusic,
      winWallpaper,
      assertMusic;
  final List<String> wallpaperList;
  final List<Challenge> challengeList;
  Config(
      {this.bkMusic = "${ASSET_SOUNDS}soundtheme.mp3",
      this.imgLife = "${ASSET_IMAGES_APP}life.png",
      this.imgFail = "${ASSET_IMAGES_APP}fail.png",
      this.loadingScreen = "${ASSET_IMAGES_APP}palo.png",
      this.font = "myFont",
      this.whereIsPresent = "Tu regalo está en:\n\nSin regalo",
      this.birthdayTarget = "Iñigo",
      this.splashWallpaper = "${ASSET_IMAGES_APP}opening.png",
      this.wallpaperList = const [
        "assets/img_app/bk.jpg",
        "assets/img_app/bk2.png",
        "assets/img_app/bk3.jpg",
        "assets/img_app/bk4.jpg",
        "assets/img_app/bk5.jpg",
        "assets/img_app/bk6.jpg",
        "assets/img_app/bk7.png"
      ],
      required this.challengeList,
      this.loopMusic = "${ASSET_SOUNDS}soundtheme.mp3",
      this.failMusic = "kick.mp3",
      this.gameOverMusic = "die.mp3",
      this.winMusic = "${ASSET_SOUNDS}ending.mp3",
      this.assertMusic = "coin.mp3",
      this.winWallpaper = "assets/img_app/win.jpg",
      this.winMessage =
          "Has superado los límites de lo imaginable, conquistando desafíos donde otros vieron imposibles. En este reino de héroes, te alzas triunfante. Ahora, el momento ha llegado: reclama tu glorioso premio, merecido por tu valentía y esfuerzo."});
}
