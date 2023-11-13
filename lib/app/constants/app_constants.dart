// ignore_for_file: constant_identifier_names

import 'package:quiz_birthday/app/data/models/challenge.dart';

const String ASSET_IMAGES_APP = "assets/img_app/";
const String ASSET_ANIM = "assets/anim/";
const String ASSET_SOUNDS = "sounds/";
const String ASSET_IMAGES_CHALLENGE = "assets/img_challenge/";
const String ASSET_DATA = "assets/data/";
const String WHERE_IS_PRESENT =
    "En una maleta en el canapé, pero no se ha acabado la combinación del candado lo importa TODO en programación.";
const String BIRTHDAY_TARGET = "Inigo";

const IMAGES_BACKGROUND = [
  "assets/img_app/bk.jpg",
  "assets/img_app/bk2.png",
  "assets/img_app/bk3.jpg",
  "assets/img_app/bk4.jpg",
  "assets/img_app/bk5.jpg",
  "assets/img_app/bk6.jpg",
  "assets/img_app/bk7.png"
];
// ignore: non_constant_identifier_names
final List<Challenge> CHALLENGES = [
  Challenge(
      solve: "Emrakul*Griselbrand*Progenitus",
      text:
          "Estás jugando un juego de formato Legacy.\n\nEs tu turno, y te enfrentas a un oponente con 10 puntos de vida.\n\nTienes 3 puntos de vida y las siguientes cartas en tu mano:\n\n\t -Show and Tell \n\n\t-[Carta Misteriosa X] \n\nTienes todas las tierras necesarias en juego para lanzar estas cartas. \n\nObjetivo del Desafío: \n\n\t-¿Qué carta (Carta Misteriosa X) debes tener en tu mano junto con Show and Tell para ganar en este turno?",
      imgPath: "NaN",
      help:
          "Busca una criatura en Magic conocida por su capacidad de ganar partidas rápidamente cuando entra en juego.",
      contains: true),
  Challenge(
      solve: "¡TeEst4s4C3rc4nd0!",
      text:
          "84 101 109 112 111 114 32 105 110 32 115 117 110 116 32 108 97 98 111 114 117 109 32 115 117 110 116 32 100 117 105 115 46 32 85 108 108 97 109 99 111 32 97 117 116 101 32 97 100 105 112 105 115 105 99 105 110 103 32 97 100 32 101 105 117 115 109 111 100 46 10 32 67 105 108 108 117 109 32 109 111 108 108 105 116 32 110 111 110 32 99 105 108 108 117 109 32 113 117 105 32 110 111 115 116 114 117 100 32 101 110 105 109 32 118 111 108 117 112 116 97 116 101 32 97 100 105 112 105 115 105 99 105 110 103 32 101 97 46 10 32 32 80 97 114 105 97 116 117 114 32 110 111 110 32 97 108 105 113 117 97 32 117 116 32 101 97 32 100 111 32 101 110 105 109 32 111 99 99 97 101 99 97 116 32 105 114 117 114 101 32 101 117 32 108 97 98 111 114 101 32 100 111 46 10 89 84 69 103 78 84 81 103 78 106 85 103 78 68 85 103 78 122 77 103 78 122 81 103 77 122 81 103 78 122 77 103 77 122 81 103 78 68 77 103 77 122 77 103 78 122 73 103 78 106 77 103 77 122 81 103 78 109 85 103 78 106 81 103 77 122 65 103 77 106 69 61 10 10 82 101 112 114 101 104 101 110 100 101 114 105 116 32 115 105 116 32 114 101 112 114 101 104 101 110 100 101 114 105 116 32 112 114 111 105 100 101 110 116 32 99 117 108 112 97 32 110 111 110 32 109 105 110 105 109 46",
      imgPath: "NaN",
      help: "Esto parecen bytes en decimal...",
      contains: false),
  Challenge(
      solve: "casilotienes",
      text: "¿Qué valor imprime en pantalla?",
      imgPath: "assets/img_challenge/challenge4.png",
      help: "Ave",
      contains: false),
  Challenge(
      solve: "28",
      text:
          "¿Qué número corresponde para seguir la serie? 1, 3, 6, 10, 15, 21 …?",
      imgPath: "NaN",
      help: "Clásicos triangulares...",
      contains: false),
  Challenge(
      solve: "tarmogoyf",
      text: "¿Qué carta es 'frog anatomy'?",
      imgPath: "NaN",
      help: "Anal...",
      contains: false),
  Challenge(
      solve: "eStUCumPleaÑoSPedAz0d3G4!",
      text:
          "9EEADi^^>682]?K^7:=6^r_y((\$##R=de)z*eqEK8!B!@ff}22G:|Jtd+hcEc)f>KD!'%fsKc",
      imgPath: "NaN",
      help: "Quizás hay un link aquí...XOR... R...7",
      contains: false)
];
