import 'package:dio/dio.dart';
import 'package:yb_common/base.dart';
import 'package:yb_common/common/config/config.dart';
import 'dart:collection';
import 'code.dart';
import 'package:dio_http_cache/dio_http_cache.dart';

import 'result_data.dart';


///http请求
class HttpManager {
  static const CONTENT_TYPE_JSON = "application/json";
  static const CONTENT_TYPE_FORM = "application/x-www-form-urlencoded";



  Dio _dio = Dio(
  //    BaseOptions()
  ); // 使用默认配置



  HttpManager(List<InterceptorsWrapper> interceptors) {

    //DioCacheManager(CacheConfig(baseUrl: "http://www.google.com")
    _dio.interceptors.addAll(interceptors);

  }

  ///发起网络请求
  ///[ url] 请求url
  ///[ params] 请求参数
  ///[ header] 外加头
  ///[ option] 配置
  Future<ResultData> netFetch(
       url, {Map<String, dynamic> header, Options option,
      noTip = false}) async {
    try {
      Map<String, dynamic> headers = new HashMap();
      if (header != null) {
            headers.addAll(header);
          }

      if (option != null) {
            option.headers = headers;
          } else {
            option = new Options(method:"post");
            option.headers = headers;
          }

      resultError(DioError e) {
            Response errorResponse;
            if (e.response != null) {
              errorResponse = e.response;
            } else {
              errorResponse = new Response(statusCode: 666);
            }
            if (e.type == DioErrorType.CONNECT_TIMEOUT ||
                e.type == DioErrorType.RECEIVE_TIMEOUT) {
              errorResponse.statusCode = Code.NETWORK_TIMEOUT;
            }
            return new ResultData(
                Code.errorHandleFunction(errorResponse.statusCode, e.message, noTip),
                false,
                errorResponse.statusCode);
          }

      Response response;
      try {
            response = await _dio.request(url,options: option);
          } on DioError catch (e) {
            return resultError(e);
          }
      if (response.data is DioError) {
            return resultError(response.data);
          }
      return response.data;
    } catch (e,i) {
      log.i2(e,i);
      return ResultData(
          Code.errorHandleFunction(Code.NETWORK_TIMEOUT, "异常", false),
          false,
          Code.NETWORK_TIMEOUT);
    }
  }


 /* ///获取授权token
  getAuthorization() async {
    return _tokenInterceptors.getAuthorization();
  }*/
}

class GetOptions extends RequestOptions{

  static Options of({Map<String,dynamic> map,cacheDuration,subKey}){
    Options request = RequestOptions(method:Constant.GET,data:map,responseType:ResponseType.plain);
    return cacheDuration==null?request:buildCacheOptions(cacheDuration,options:request,subKey:subKey??"");
  }
}

class PostOptions extends RequestOptions{
  static Options of({Map<String,dynamic> map,cacheDuration,subKey}){//:super(method:Constant.POST,data:map,responseType:ResponseType.plain){
    Options request = RequestOptions(method:Constant.POST,data:map,responseType:ResponseType.plain);
    return cacheDuration==null?request:buildCacheOptions(cacheDuration,options:request,subKey:subKey??"");
  }
}

class PutOptions extends RequestOptions{
  static Options of({Map<String,dynamic> map,cacheDuration,subKey}){//:super(method:Constant.POST,data:map,responseType:ResponseType.plain){
    Options request = RequestOptions(method:Constant.PUT,data:map,responseType:ResponseType.plain);
    return cacheDuration==null?request:buildCacheOptions(cacheDuration,options:request,subKey:subKey??"");
  }
}

class DeleteOptions extends RequestOptions{
  static Options of({Map<String,dynamic> map,cacheDuration,subKey}){//:super(method:Constant.POST,data:map,responseType:ResponseType.plain){
    Options request = RequestOptions(method:Constant.DELETE,data:map,responseType:ResponseType.plain);
    return cacheDuration==null?request:buildCacheOptions(cacheDuration,options:request,subKey:subKey??"");
  }
}





