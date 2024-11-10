import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'Landing/first_landing.dart';
import 'generated/l10n.dart';
import 'l10n/app_locale.dart';

void main() {
  runApp(const MyApp());
}
 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return GetMaterialApp(
       locale: AppLocale().currentLocale, // اللغة
       supportedLocales: S.delegate.supportedLocales, // اللغات المدعومة
       localizationsDelegates: [
         GlobalMaterialLocalizations.delegate,
         GlobalCupertinoLocalizations.delegate,
         GlobalWidgetsLocalizations.delegate,
         S.delegate, // لدعم التسميات
       ],

       debugShowCheckedModeBanner: false,
       home: FirstLanding(),
     ) ;
   }
 }
