import 'package:get/get.dart';
import 'package:salarybox/controller/controller.dart';

class OTPBinding extends Bindings {
  @override
  void dependencies() => Get.lazyPut(() => OTPController());
}
