import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_birthday/app/bindings/splash_binding.dart';
import 'package:quiz_birthday/app/routes/pages.dart';

void main() async {
//  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INITIAL,
    theme: ThemeData.light(useMaterial3: false),
    defaultTransition: Transition.fade,
    initialBinding: SplashBinding(),
    getPages: AppPages.pages,
    title: 'Quiz BirthDay',
    //locale: Get.deviceLocale,
    //fallbackLocale: const Locale("en_US"),
    // translationsKeys: AppTranslation.translationKeys,
  ));
}
