import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:yb_common/common/net/code.dart';
import 'package:yb_common/net.dart';

import '../../../base.dart';
import '../result_data.dart';
import 'package:fluttertoast/fluttertoast.dart';

/// @author yangbang
/// @create 2019/12/12
/// @Describe reponse 拦截器
class ResponseInterceptors extends MyInterceptorsWrapper {
  static const TAG = "ResponseInterceptors";

  ResponseInterceptors();

  @override
  onResponse(Response response) async {

    RequestOptions option = response.request;
    var value;
    try {
      /*var header = response.headers[Headers.contentTypeHeader];
      if ((header != null && header.toString().contains("text"))) {
        value = new ResultData(response.data, true, Code.SUCCESS);
      } else if (response.statusCode >= 200 && response.statusCode < 300) {
        value = new ResultData(response.data, true, Code.SUCCESS,
            headers: response.headers);
      }*/
      if(response.statusCode >= 200 && response.statusCode < 300){

        Map map = jsonDecode(response.data);
        value = new ResultData(map["data"], true, Code.SUCCESS,
            headers: response.headers,error:map["error"]);
      }else{
        value = new ResultData(response.data, false, response.statusCode,
            headers: response.headers);
      }/*else if(response.statusCode == 400){
        Map map = jsonDecode(response.data);
        value = new ResultData(map,false,response.statusCode,
            headers: response.headers,error:map["error"]);
        Log.d("fuck aaa   ${map["status"]}");
        if(map["status"]!=null&&map["status"]){
          Fluttertoast.showToast(msg: map["error"]??"失败");
        }

      }else{
        value = new ResultData(response.data, false, response.statusCode,
            headers: response.headers);
      }*/
    } catch (e,s) {
      log.i2(e,s);
      value = new ResultData(response.data, false, response.statusCode,
          headers: response.headers);
    }
    return value;
  }

  @override
  onError(DioError err) async {

    try{
      Response response =  err.response;
      if((response?.statusCode ??0) == 400){
        Map map = jsonDecode(response.data);
        /*value = new ResultData(map,false,response.statusCode,
            headers: response.headers,error:map["error"]);*/
        //Log.d("fuck aaa   ${map["status"]}");
        if(map["status"]!=null&&map["status"]){
          Fluttertoast.showToast(msg: map["error"]??"失败");
        }
      }
    }catch(e,s){
      log.i2(e,s);
    }


    return err; // continue;
  }
}
