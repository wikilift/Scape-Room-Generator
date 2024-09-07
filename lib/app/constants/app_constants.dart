// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:quiz_birthday/app/constants/challengues_selector.dart';
import 'package:quiz_birthday/app/data/models/config.dart';

const bool DEBUG = false;
const String ASSET_IMAGES_APP = "assets/img_app/";
const String ASSET_ANIM = "assets/anim/";
const String ASSET_SOUNDS = "sounds/";
const String ASSET_IMAGES_CHALLENGE = "assets/img_challenge/";
const String ASSET_DATA = "assets/data/";

enum BirthdayConfig { CRIS, INIGO, VIKI, DEBUG }

final CONFIG_APP = Config(
    imgFail: "${ASSET_IMAGES_APP}viki/viki_lose.png",
    imgLife: "${ASSET_IMAGES_APP}viki/vikiok.png",
    loadingScreen: "${ASSET_IMAGES_APP}viki/jessicaCrospsd.png",
    font: "mistery",
    splashWallpaper: "${ASSET_IMAGES_APP}viki/wall.png",
    birthdayTarget: "Vikki",
    whereIsPresent: "Vale por una noche en Andorra",
    loopMusic: "${ASSET_SOUNDS}harry.mp3",
    assertMusic: "good_mistery.mp3",
    failMusic: "fail_potter.wav",
    gameOverMusic: "game_over.wav",
    winMusic: "${ASSET_SOUNDS}win_mistery.mp3",
    winWallpaper: "${ASSET_IMAGES_APP}viki/win_potter.jpg",
    wallpaperList: const [
      "assets/img_app/viki/bk1.png",
      "assets/img_app/viki/bk2.png",
      "assets/img_app/viki/bk3.png",
      "assets/img_app/viki/bk4.png",
      "assets/img_app/viki/bk5.png",
      "assets/img_app/viki/bk6.png",
      "assets/img_app/viki/bk7.png"
    ],
    challengeList: GET_CHALLENGUES_CONFIG(BirthdayConfig.VIKI));
