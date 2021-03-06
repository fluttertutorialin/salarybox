import 'package:get/get.dart';
import 'package:salarybox/shared/provider/local_auth_provider.dart';

class LocalAuthRepository {
  final LocalAuthProvider _localAuthProvider = Get.find<LocalAuthProvider>();

  clearSession() => _localAuthProvider.clearSession();

  String readSession(String key) => _localAuthProvider.readSession(key);

  void writeSession(String key, String value) => _localAuthProvider.writeSession(key, value);

  bool hasDataSession(String key) => _localAuthProvider.hasDataSession(key);
}
