import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowtilus/themes/marine.dart';
import 'package:knowtilus/translations/ktranslations.dart';
import 'package:knowtilus/welcome.dart';

void main() {
  runApp(GetMaterialApp(
    home: const Welcome(),
    theme: Marine.get(),
    translations: Ktranslations(),
    locale: Get.deviceLocale,
    fallbackLocale: const Locale('en', 'US'),
  ));
}


