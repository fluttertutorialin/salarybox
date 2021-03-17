import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalizationService extends Translations {
  static final locale = _getLocaleFromLanguage();
  static final fallbackLocale = Locale('en', 'US');

  static final langCodes = [
    'en',
    'hi',
  ];

  static final locales = [
    Locale('en', 'US'),
    Locale('hi', 'HI'),
  ];

  static final langs = LinkedHashMap.from({
    'en': 'English',
    'hi': 'Hindi',
  });

  static void changeLocale(String langCode) {
    final locale = _getLocaleFromLanguage(langCode: langCode);
    Get.updateLocale(locale);
  }

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en,
        'hi': hi,
      };

  static Locale _getLocaleFromLanguage({String langCode}) {
    var lang = langCode ?? Get.deviceLocale.languageCode;
    for (int i = 0; i < langCodes.length; i++) {
      if (lang == langCodes[i]) return locales[i];
    }
    return Get.locale;
  }
}

const Map<String, String> en = {
  'appName': 'SALARYBOX',
  'language': 'Language',

  'titleIntroduction': 'Easily Track Salary and Attendance',
  'titleLogin': 'Enter your phone number to get started',
  'titleHelp': 'Help',
  'titleOTP': 'Enter the verification\n code sent to',
  'titleResendOTP': 'Resend OTP',

  'buttonNext': 'Next',
  'buttonIntroduction': 'Start using SalaryBox',

  'hintMobile': 'Mobile',
};

const Map<String, String> hi = {
  'appName': '',
  'language': '',

  'titleIntroduction': '',
  'titleLogin': '',
  'titleHelp': '',
  'titleOTP': '',
  'titleResendOTP': '',

  'buttonNext': '',
  'buttonIntroduction': '',

  'hintMobile': '',
};

