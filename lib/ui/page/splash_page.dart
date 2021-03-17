import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salarybox/controller/controller.dart';
import 'package:salarybox/resource/style.dart';

class SplashPage extends StatefulWidget {
  @override
  createState() => _SplashState();
}

class _SplashState extends State<SplashPage> {
  final _splashController = Get.put(SplashController());

  @override
  build(BuildContext context) => Scaffold(
      body: Center(
          child: SlideTransition(
              position: _splashController.offsetAnimation,
              child: Text('appName'.tr, style: splashTitleGreenStyle))));
}
