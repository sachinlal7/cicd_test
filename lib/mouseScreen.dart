import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

class InactivityService extends GetxService {
  final RxBool _isUserInactive = false.obs;
  Timer? _inactivityTimer;
  final int _timeoutDuration = 60; // Duration in seconds

  bool get isUserInactive => _isUserInactive.value;

  @override
  void onInit() {
    super.onInit();
    _startInactivityTimer();
  }

  void _startInactivityTimer() {
    _inactivityTimer?.cancel();
    _inactivityTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (timer.tick >= _timeoutDuration) {
        _isUserInactive.value = true;
        print("timer");
        _handleLogout();
      }
    });
  }

  void resetTimer() {
    _isUserInactive.value = false;
    _startInactivityTimer();
  }

  void _handleLogout() {
    print("object");
    // Implement your logout logic here
    Get.to(() => '/homepage'); // Navigate to the login page
  }
}
