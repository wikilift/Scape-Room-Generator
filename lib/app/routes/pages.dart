// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:quiz_birthday/app/bindings/gameover_binding.dart';
import 'package:quiz_birthday/app/bindings/landing_binding.dart';
import 'package:quiz_birthday/app/bindings/splash_binding.dart';
import 'package:quiz_birthday/app/bindings/win_binding.dart';
import 'package:quiz_birthday/app/ui/pages/gameover_page/gameover_page.dart';
import 'package:quiz_birthday/app/ui/pages/landing_page/landing_page.dart';
import 'package:quiz_birthday/app/ui/pages/splash_page/splash_page.dart';
import 'package:quiz_birthday/app/ui/pages/win_page/win_page.dart';

part './routes.dart';

abstract class AppPages {
  static const TRANSITION_DURATION = 800;
  static final pages = [
    //!DEVELOP PAGES
    GetPage(
      name: Routes.SPLASH_PAGE,
      page: () => const SplashPage(),
      binding: SplashBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: TRANSITION_DURATION),
    ),
    GetPage(
      name: Routes.LANDING,
      page: () => const LandingPage(),
      binding: LandingBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: TRANSITION_DURATION),
    ),
    GetPage(
      name: Routes.GAME_OVER,
      page: () => const GameoverPage(),
      binding: GameoverBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: TRANSITION_DURATION),
    ),
    GetPage(
      name: Routes.WIN_PAGE,
      page: () => const WinPage(),
      binding: WinBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: TRANSITION_DURATION),
    ),
  ];
}
