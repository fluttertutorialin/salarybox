import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:salarybox/model/selectlanguage/select_language.dart';
import 'package:salarybox/model/selectlanguage/select_language_response.dart';

class SelectLanguageController extends GetxController {
  static SelectLanguageController get to => Get.find();
  var selectLanguageList = RxList<SelectLanguage>();

  @override
  void onInit() {
    super.onInit();

    getSelectLanguage();
  }

  void getSelectLanguage() {
    var selectLanguageResponse = SelectLanguageResponse(selectLanguageList: [
      SelectLanguage(id: 1, name: 'English', color: Colors.black, isSelect: true),
      SelectLanguage(id: 1, name: 'Hindi', color: Colors.green),
    ]);

    selectLanguageList.addAll(selectLanguageResponse.selectLanguageList.obs);
  }

  @override
  void dispose() {
    super.dispose();
  }
}
