import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'en_us.dart';
import 'fil_ph.dart';

class LocalizationService extends Translations {
  //default locale
  static final locale = Locale('en', 'US');

  //fallbacksLocale saves the day when the locale gets in trouble
  static final fallbackLocale = Locale('en', 'US');
  static final langs = ['English', 'Filpino'];

  //supported locale
  static final locales = [Locale('en', 'US'), Locale('fil', 'PH')];

  @override
  Map<String, Map<String, String>> get keys => {'en_US': enUS, 'fil_PH': filPH};
  void changeLocale(String lang) {
    final locale = _getLocaleFromLanguage(lang);
    Get.updateLocale(locale);
  }

  Locale _getLocaleFromLanguage(String lang) {
    for (int i = 0; i < langs.length; i++) {
      if (lang == langs[i]) return locales[i];
    }
    return Get.locale;
  }
}
