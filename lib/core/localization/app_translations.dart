import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../utils/session_manager.dart';

class AppTranslations extends Translations {
  static const en = Locale('en', 'US');
  static const bn = Locale('bn', 'BD');
  static const es = Locale('es', 'ES');
  static const hi = Locale('hi', 'IN');
  static const ar = Locale('ar', 'SA');
  static const fr = Locale('fr', 'FR');
  static const de = Locale('de', 'DE');
  static const pt = Locale('pt', 'PT');
  static const ru = Locale('ru', 'RU');
  static const ja = Locale('ja', 'JP');
  static const ko = Locale('ko', 'KR');
  static const it = Locale('it', 'IT');
  static const zh = Locale('zh', 'CN');
  static const tr = Locale('tr', 'TR');
  static const id = Locale('id', 'ID');

  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': _enUS,
    'bn_BD': _bnBD,
    'es_ES': _esES,
    'hi_IN': _hiIN,
    // 'ar_SA': _arSA,
    // 'fr_FR': _frFR,
    // 'de_DE': _deDE,
    // 'pt_PT': _ptPT,
    // 'ru_RU': _ruRU,
    // 'ja_JP': _jaJP,
    // 'ko_KR': _koKR,
    // 'it_IT': _itIT,
    // 'zh_CN': _zhCN,
    // 'tr_TR': _trTR,
    // 'id_ID': _idID,
  };

  static Locale resolveSavedLocale() {
    final code = SessionManager.getValue(kLanguageCode, value: 'en');
    switch (code) {
      case 'en':
        return AppTranslations.en;
      case 'bn':
        return AppTranslations.bn;
      case 'es':
        return AppTranslations.es;
      case 'hi':
        return AppTranslations.hi;
      case 'ar':
        return AppTranslations.ar;
      case 'fr':
        return AppTranslations.fr;
      case 'de':
        return AppTranslations.de;
      case 'pt':
        return AppTranslations.pt;
      case 'ru':
        return AppTranslations.ru;
      case 'ja':
        return AppTranslations.ja;
      case 'ko':
        return AppTranslations.ko;
      case 'it':
        return AppTranslations.it;
      case 'zh':
        return AppTranslations.zh;
      case 'tr':
        return AppTranslations.tr;
      case 'id':
        return AppTranslations.id;
      default:
        return AppTranslations.en;
    }
  }
}

// Common keys across app; keep keys consistent and human-friendly
const Map<String, String> _enUS = {};
const Map<String, String> _bnBD = {};
const Map<String, String> _esES = {};
const Map<String, String> _hiIN = {};
