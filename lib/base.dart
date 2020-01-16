library base;

import 'common/config/config.dart';
import 'common/util/Log.dart';
/// @author yangbang
/// @create 2020/1/15
/// @Describe


export 'package:yb_common/common/style/yb_style.dart';
export 'local.dart';
export 'package:yb_common/common/util/Log.dart';

/*

export 'package:yb_common/common/event/http_error_event.dart';
export 'package:yb_common/common/event/index.dart';
*/
final Log log = Log(Config.DEBUG);

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}


