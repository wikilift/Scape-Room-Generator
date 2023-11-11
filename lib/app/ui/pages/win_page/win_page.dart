import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/win_controller.dart';

class WinPage extends GetView<WinController> {
  const WinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WinPage'),
      ),
      body: SafeArea(
        child: Text('WinController'),
      ),
    );
  }
}
