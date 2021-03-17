import 'package:get/get.dart';
import 'package:salarybox/controller/controller.dart';

class SelectLanguageBinding extends Bindings {
  @override
  void dependencies() => Get.lazyPut(() => SelectLanguageController());
}
