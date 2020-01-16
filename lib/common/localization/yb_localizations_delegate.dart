import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'default_localizations.dart';

/**
 * 多语言代理
 * Created by guoshuyu
 * Date: 2018-08-15
 */
class YBLocalizationsDelegate extends LocalizationsDelegate<YBLocalizations> {

  YBLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    ///支持中文和英语
    return true;
  }

  ///根据locale，创建一个对象用于提供当前locale下的文本显示
  @override
  Future<YBLocalizations> load(Locale locale) {
    return new SynchronousFuture<YBLocalizations>(new YBLocalizations(locale));
  }

  @override
  bool shouldReload(LocalizationsDelegate<YBLocalizations> old) {
    return false;
  }

  ///全局静态的代理
  static YBLocalizationsDelegate delegate = new YBLocalizationsDelegate();
}
