import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/gameover_controller.dart';

class GameoverPage extends GetView<GameoverController> {
  const GameoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GameoverPage'),
      ),
      body: SafeArea(
        child: Text('GameoverController'),
      ),
    );
  }
}
