import 'package:get/get.dart';
import 'package:salarybox/controller/controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() => Get.lazyPut(() => LoginController());
}
