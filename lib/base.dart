library base;

import 'package:yb_common/config.dart';
import 'package:yb_common/style.dart';
import 'common/util/Log.dart';
import 'common/util/common_utils.dart';
/// @author yangbang
/// @create 2020/1/15
/// @Describe


/*

export 'package:yb_common/common/event/http_error_event.dart';
export 'package:yb_common/common/event/index.dart';
*/
final Log log = Log(Config.DEBUG);
final DeviceInfo device = DeviceInfo();
YBColors color = YBColors();
YBSise size;
YBTextStyle textStyle;

/*
init(YBSise s){
  size = s;
  textStyle = YBTextStyle(s,color);
}
*/


/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}


