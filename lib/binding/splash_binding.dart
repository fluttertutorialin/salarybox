import 'package:get/get.dart';
import 'package:salarybox/controller/controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() => Get.lazyPut(() => SplashController());
}
