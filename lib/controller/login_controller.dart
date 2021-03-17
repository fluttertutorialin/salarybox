import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:salarybox/utils/extensions.dart';

class LoginController extends GetxController {
  static LoginController get to => Get.find();

  String _mobile = '';

  var mobileController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  changeMobile(String value) {
    _mobile = value;
  }

  String isMobileValid(String value) => value.validateMobile();

  @override
  void dispose() {
    super.dispose();
  }
}
