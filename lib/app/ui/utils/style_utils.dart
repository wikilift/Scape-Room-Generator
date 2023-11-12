// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:get/get.dart';

const double SIZED_FLOW_STATE = 450;
const double SIZED_STATE_1 = 4;
const double SIZED_STATE_2 = ((SIZED_FLOW_STATE - 50) / 5) * 1;
const double SIZED_STATE_3 = ((SIZED_FLOW_STATE - 50) / 5) * 2;
const double SIZED_STATE_4 = ((SIZED_FLOW_STATE - 50) / 5) * 3;
const double SIZED_STATE_5 = ((SIZED_FLOW_STATE - 50) / 5) * 4;
const double SIZED_STATE_6 = (((SIZED_FLOW_STATE - 50) / 5) * 5) - 4;

const double SIZED_PANEL_ITEM = 40;
const double SIZED_PANEL_ITEM_ORDER = 90;

const Color PRIMARY = Color(0xFF63B4FF);
const Color SECONDARY = Color(0xFFF3F9FF);
const Color WARNING = Color(0xFF3B69C6);
const Color DANGER = Color(0xFF3B69C6);
const Color INFO = Color.fromARGB(255, 66, 78, 101);
const Color NORMAL = Color(0xFF000000);
const Color BACKGROUND = Color(0xFFF1F3F9);
const Color UNNOTICED = Color(0xFF888888);
const Color ENGENEER_GREEN = Color.fromRGBO(34, 204, 128, 1);
const Color BOARD_ENGENEERING = Color.fromARGB(198, 0, 0, 0);
const Color ORANGE_ENGENEERING = Color.fromRGBO(239, 165, 84, 1);

const double H0 = 40;
const double H1 = 32;
const double H2 = 26;
const double H3 = 22;
const double H4 = 20;
const double H5 = 18;

const double P1 = 13;
const double P2 = 11;

const warningGradient = LinearGradient(colors: [
  Color.fromRGBO(255, 87, 34, 1),
  Color.fromRGBO(255, 112, 67, 1),
  Color.fromRGBO(255, 138, 0, 1),
  Color.fromRGBO(255, 153, 51, 1),
  Color.fromRGBO(255, 171, 64, 1),
  Color.fromRGBO(255, 171, 85, 1),
  Color.fromRGBO(255, 159, 28, 1),
], begin: Alignment.topLeft, end: Alignment.bottomRight);

const errorGradient = LinearGradient(colors: [
  Color.fromRGBO(255, 17, 17, 1),
  Color.fromRGBO(255, 34, 34, 1),
  Color.fromRGBO(255, 68, 68, 1),
  Color.fromRGBO(255, 85, 85, 1),
  Color.fromRGBO(255, 102, 102, 1),
  Color.fromRGBO(255, 136, 136, 1),
  Color.fromRGBO(255, 153, 153, 1),
  Color.fromRGBO(255, 170, 170, 1),
  Color.fromRGBO(255, 204, 204, 1),
  Color.fromRGBO(255, 221, 221, 1),
], begin: Alignment.topLeft, end: Alignment.bottomRight);

const okGradient = LinearGradient(colors: [
  Color.fromRGBO(0, 153, 0, 1),
  Color.fromRGBO(0, 170, 0, 1),
  Color.fromRGBO(0, 187, 0, 1),
  Color.fromRGBO(0, 204, 0, 1),
  Color.fromRGBO(0, 221, 0, 1),
  Color.fromRGBO(0, 238, 0, 1),
  Color.fromRGBO(85, 255, 85, 1),
  Color.fromRGBO(102, 255, 102, 1),
  Color.fromRGBO(119, 255, 119, 1),
  Color.fromRGBO(153, 255, 153, 1),
  Color.fromRGBO(170, 255, 170, 1),
  Color.fromRGBO(187, 255, 187, 1),
], begin: Alignment.topLeft, end: Alignment.bottomRight);
InputDecoration inputFieldDecoration(
        {Color colorBorder = Colors.blueAccent,
        Color colorLabel = Colors.grey,
        IconData? icon,
        IconData? iconSuffix,
        TextOverflow? overflow,
        Color iconColor = Colors.grey,
        double iconSize = 35,
        String? hint,
        double? textSize = 20,
        required String label}) =>
    InputDecoration(
        filled: true,
        fillColor: Colors.white,
        label: Text(
          label,
          style: TextStyle(
              color: colorLabel,
              fontSize: (textSize == null) ? 30 : textSize,
              fontWeight: FontWeight.bold),
          overflow: (overflow == null) ? null : overflow,
        ),
        alignLabelWithHint: true,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorBorder, width: 2)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorBorder, width: 2)),
        hintText: hint,
        hintStyle: appStandarText(color: Colors.orange),
        suffixIcon: Icon(iconSuffix, size: iconSize, color: iconColor),
        labelStyle: appStandarText(color: Colors.blue),
        prefixIcon: icon != null
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(icon, color: iconColor, size: iconSize),
              )
            : null);
BoxDecoration GRADIENT_BK() => const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
          Color.fromARGB(255, 240, 240, 240),
          Color.fromARGB(255, 231, 231, 231)
        ],
            stops: [
          0.2,
          0.8
        ]));

TextStyle appStandarText(
        {double? fontSize, Color? color, bool shadow = false}) =>
    TextStyle(
        color: (color != null) ? color : const Color.fromRGBO(0, 0, 0, 0.8),
        fontSize: (fontSize != null) ? fontSize : H5,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
        height: 1.5,
        fontFamily: 'myFont',
        decoration: TextDecoration.none,
        shadows: (shadow)
            ? const [
                Shadow(
                    blurRadius: 5.0,
                    color: Colors.black54,
                    offset: Offset(2.0, 2.0))
              ]
            : null);

Widget appStandardButton(
        {required String msg,
        required Color color,
        double? size,
        double? width,
        double? height}) =>
    Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            shape: BoxShape.rectangle,
            color: color.withOpacity(0.8)),
        width: width ??= 120,
        height: height ??= 40,
        child: Center(
          child: Text(
            msg,
            style: appStandarText(
                fontSize: size ??= H3, color: Colors.white, shadow: true),
            textAlign: TextAlign.center,
          ),
        ));

Future<void> blockScreen(context) => showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => Center(
        child: SpinKitWave(
          color: Colors.blue.withOpacity(0.5),
          size: 200,
        ),
      ),
    );
launchSnackBar(String title, String message,
    {Color? textColor,
    bool? warning,
    bool? error,
    int? duration,
    double? overlayBlur,
    SnackPosition? postion}) {
  if (warning != null && warning) {
    Get.snackbar(
      "",
      "",
      snackPosition: postion ??= SnackPosition.TOP,
      titleText: Text(title,
          style:
              appStandarText(fontSize: H3, color: textColor ??= Colors.black)),
      messageText:
          Text(message, style: appStandarText(fontSize: H3, color: textColor)),
      backgroundColor: Colors.orange.withOpacity(0.6),
      duration: Duration(seconds: duration ?? 2),
    );
  } else if (error != null && error) {
    Get.snackbar("", "",
        snackPosition: postion ??= SnackPosition.TOP,
        titleText: Text(title,
            style: appStandarText(
                fontSize: H3, color: textColor ??= Colors.black)),
        messageText: Text(message,
            style: appStandarText(fontSize: H3, color: textColor)),
        backgroundColor: Colors.red.withOpacity(0.6),
        duration: Duration(seconds: duration ?? 2));
  } else {
    Get.snackbar("", "",
        snackPosition: postion ??= SnackPosition.TOP,
        titleText: Text(title,
            style: appStandarText(
                fontSize: H3, color: textColor ??= Colors.black)),
        messageText: Text(message,
            style: appStandarText(fontSize: H3, color: textColor)),
        // backgroundColor: Colors.green.withOpacity(0.6),
        duration: Duration(seconds: duration ?? 2));
  }
}
