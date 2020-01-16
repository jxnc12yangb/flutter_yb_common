import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yb_common/common/localization/yb_string_base.dart';

///自定义多语言实现
class YBLocalizations {
  final Locale locale;

  YBLocalizations(this.locale);

  ///根据不同 locale.languageCode 加载不同语言对应
  ///GSYStringEn和GSYStringZh都继承了GSYStringBase
  static Map<String, YBStringBase> _localizedValues = {
    //'en': new YBStringEn(),
    //'zh': new YBStringZh(),
  };

  YBStringBase get currentLocalized {
    if (_localizedValues.containsKey(locale.languageCode)) {
      return _localizedValues[locale.languageCode];
    }
    return _localizedValues["en"];
  }

  ///通过 Localizations 加载当前的 GSYLocalizations
  ///获取对应的 GSYStringBase
  static YBLocalizations of(BuildContext context) {
    return Localizations.of(context, YBLocalizations);
  }

  ///通过 Localizations 加载当前的 GSYLocalizations
  ///获取对应的 GSYStringBase
  static YBStringBase i18n(BuildContext context) {
    return (Localizations.of(context,YBLocalizations) as YBLocalizations)
        .currentLocalized;
  }
}
