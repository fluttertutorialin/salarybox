import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'app_module.dart';
import 'dependency_injection.dart';
import 'language_change/localization_service.dart';
import 'resource/colors.dart';
import 'resource/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white));

  await GetStorage.init();
  DependencyInjection.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,

      //THEME
      theme: ThemeData(
          scaffoldBackgroundColor: backgroundColor,
          brightness: Brightness.light,
          accentColor: accentColor,
          primaryColor: primaryColor,
          primarySwatch: primarySwatchColor),

      //FIRST SCREEN LAUNCH
      initialRoute: firstLaunchRoute,

      //CHANGE LANGUAGE
      locale: LocalizationService.locale,
      fallbackLocale: LocalizationService.fallbackLocale,
      translations: LocalizationService(),

      //ROUTES PAGES
      getPages: AppPages.pages);
}
