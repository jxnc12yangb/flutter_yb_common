import 'package:dio/dio.dart';
import 'package:yb_common/net.dart';
import 'package:yb_common/base.dart';


/// @author yangbang
/// @create 2019/12/12
/// @Describe head拦截器
class HeaderInterceptors extends MyInterceptorsWrapper {
  HeaderInterceptors();

  @override
  onRequest(RequestOptions options) async {
    ///超时
    options.connectTimeout = 30000;
    options.headers.addAll({"SBID":device.identifier});

    return options;
  }

}
