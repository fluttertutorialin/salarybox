import 'package:get/get.dart';
import 'package:salarybox/ui/page/otp_page.dart';
import 'binding/binding.dart';
import 'resource/routes.dart';
import 'ui/page/page.dart';

abstract class AppPages {
  static final List<GetPage> pages = [
    GetPage(
        name: firstLaunchRoute,
        page: () => SplashPage(),
        binding: SplashBinding()),

    GetPage(
        name: otpRoute,
        page: () => OTPPage(),
        binding: OTPBinding()),

    GetPage(
        name: loginRoute,
        page: () => LoginPage(),
        binding: LoginBinding()),

    GetPage(
        name: selectLanguageRoute,
        page: () => SelectLanguagePage(),
        binding: SelectLanguageBinding()),

    GetPage(
        name: introductionRoute,
        page: () => IntroductionPage()),
  ];
}
