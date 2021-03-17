import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'shared/provider/local_auth_provider.dart';
import 'shared/repository/local_auth_repository.dart';

class DependencyInjection {
  static void init() {
    //SESSION BINDING
    Get.lazyPut<GetStorage>(() => GetStorage(), fenix: true);

    Get.lazyPut<LocalAuthProvider>(() => LocalAuthProvider(Get.find()), fenix: true);
    Get.lazyPut<LocalAuthRepository>(() => LocalAuthRepository(), fenix: true);
  }
}
