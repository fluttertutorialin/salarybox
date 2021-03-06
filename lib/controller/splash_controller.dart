import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:salarybox/resource/api.dart';
import 'package:salarybox/resource/routes.dart';
import 'package:salarybox/shared/shared.dart';

class SplashController extends GetxController
    with SingleGetTickerProviderMixin {
  static SplashController get to => Get.find();

  var _localAuthRepository = Get.find<LocalAuthRepository>();
  AnimationController _controller;
  Animation<Offset> offsetAnimation;

  @override
  void onInit() {
    super.onInit();

    _controller = AnimationController(duration: const Duration(seconds: 1), vsync: this);
    offsetAnimation = Tween<Offset>(begin: Offset.zero, end: const Offset(0.0, -0.8)).animate(CurvedAnimation(parent: _controller, curve: Curves.decelerate));
    _controller.forward().then((value) => _controller.reverse());
  }

  @override
  void onReady() {
    super.onReady();
    _launchPage();
  }

  _launchPage() async {
    var _onBoarding =
        _localAuthRepository.hasDataSession(SECURE_STORAGE_ON_BOARDING);
    var _whereLogin =
        _localAuthRepository.hasDataSession(SECURE_STORAGE_WHERE_LOGIN);

    await Future.delayed(const Duration(seconds: 3), () {});
    Get.offNamed(introductionRoute);
  }

  @override
  void dispose() {
    super.dispose();
  }
}
