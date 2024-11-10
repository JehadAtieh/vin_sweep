import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLocale {
  // Singleton
  static final AppLocale _shared = AppLocale._private();
  factory AppLocale() => _shared;
  AppLocale._private();

  // تعيين اللغة الأساسية إلى العربية
  Locale _currentLocale = const Locale("en"); // اللغة العربية كإعداد افتراضي
  Locale get currentLocale => _currentLocale;

  void updateLocale() {
    if (_currentLocale.languageCode == "en") {
      _currentLocale = const Locale("ar");
    } else {
      _currentLocale = const Locale("en");
    }
    Get.updateLocale(_currentLocale);
  }

  bool isArabic() => _currentLocale.languageCode == "ar";
}
