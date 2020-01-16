import 'package:dio/dio.dart';
import 'package:yb_common/common/util/common_utils.dart';


/// @author yangbang
/// @create 2019/12/12
/// @Describe head拦截器
class HeaderInterceptors extends InterceptorsWrapper {
  @override
  onRequest(RequestOptions options) async {
    ///超时
    options.connectTimeout = 30000;
    options.headers.addAll({"SBID":DeviceInfo.identifier});


    return options;
  }

}