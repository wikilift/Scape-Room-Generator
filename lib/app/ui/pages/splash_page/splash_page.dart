import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_birthday/app/ui/utils/style_utils.dart';
import '../../../controllers/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        title: Text(
          'SplashPage',
          style: appStandarText(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Text('SplashController'),
      ),
    );
  }
}
