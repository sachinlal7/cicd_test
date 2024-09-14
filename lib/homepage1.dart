import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resize_screen_demo/mouseScreen.dart';

class HomePage extends StatelessWidget {
  final InactivityService _inactivityService = Get.find<InactivityService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MouseRegion(
        onEnter: (_) => _inactivityService.resetTimer(),
        onExit: (_) => _inactivityService.resetTimer(),
        child: Center(
          child: Text('Home Page'),
        ),
      ),
    );
  }
}
