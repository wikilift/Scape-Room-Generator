// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:quiz_birthday/app/constants/challengues_selector.dart';
import 'package:quiz_birthday/app/data/models/config.dart';

const bool DEBUG = false;
const String ASSET_IMAGES_APP = "assets/img_app/";
const String ASSET_ANIM = "assets/anim/";
const String ASSET_SOUNDS = "sounds/";
const String ASSET_IMAGES_CHALLENGE = "assets/img_challenge/";
const String ASSET_DATA = "assets/data/";

enum BirthdayConfig { CRIS, INIGO }

final CONFIG_APP = Config(
    imgFail: "${ASSET_IMAGES_APP}cris/failcm.png",
    imgLife: "${ASSET_IMAGES_APP}cris/lifecm.png",
    loadingScreen: "${ASSET_IMAGES_APP}cris/jessicaCrospsd.png",
    font: "mistery",
    splashWallpaper: "${ASSET_IMAGES_APP}cris/open_mistery.png",
    birthdayTarget: "Cristina",
    whereIsPresent: "En progreso",
    loopMusic: "${ASSET_SOUNDS}mistery.mp3",
    assertMusic: "good_mistery.mp3",
    failMusic: "fail.wav",
    gameOverMusic: "game_over.wav",
    winMusic: "${ASSET_SOUNDS}win_mistery.mp3",
    wallpaperList: const [
      "assets/img_app/cris/bk1.png",
      "assets/img_app/cris/bk2.png",
      "assets/img_app/cris/bk3.png",
      "assets/img_app/cris/bk4.png",
      "assets/img_app/cris/bk5.png",
      "assets/img_app/cris/bk6.png",
      "assets/img_app/cris/bk7.png"
    ],
    challengeList: GET_CHALLENGUES_CONFIG(BirthdayConfig.CRIS));
