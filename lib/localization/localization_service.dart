import 'dart:ui';
import 'package:get/get.dart';
import 'package:zwork/localization/langs/en.dart';
import 'package:zwork/localization/langs/ru.dart';
import 'package:zwork/resource/storage.dart';

class LocalizationService extends Translations {
  static const List<Locale> supportedLocales = [Locale('en'), Locale('ru')];
  static const Locale fallbackLocale = Locale('en');
  static const Locale initialLocale = Locale('ru');

  @override
  Map<String, Map<String, String>> get keys => {'ru': ru, 'en': en};

  static Locale getInitialLocale() {
    return Locale(localeApp!);
  }

  /* static void switchLocale(String newLangCode) {
    final _newLocale = Locale(newLangCode);
    Get.updateLocale(_newLocale);
  } */
}
