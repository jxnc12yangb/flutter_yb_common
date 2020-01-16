import 'package:dio/dio.dart';
import 'package:yb_common/common/config/config.dart';
import 'package:yb_common/common/local/local_storage.dart';
import 'package:yb_common/common/util/EncryptUtil.dart';
import 'package:yb_common/common/util/Log.dart';

import '../address.dart';
import 'package:synchronized/synchronized.dart' as synchronized;

/// @author yangbang
/// @create 2019/12/12
/// @Describe Token拦截器

class TokenInterceptors extends InterceptorsWrapper {
  static const String TAG = "TokenInterceptors";

  Dio _dio;
  TokenInterceptors(this._dio);

  bool _token = false;
  final _lock = synchronized.Lock();
  @override
  onRequest(RequestOptions options) async {
    //授权码
    //Log.dTAG(TAG,"begin author1 token ==$_token" );
    if (_token) {//认证通过
      //Log.dTAG(TAG,"begin author autho Success1");
      //print("rsaEncode onRequest");
    }else{
      _dio.lock();
      await _lock.synchronized(() async {
        // Only this block can run (once) until done
        var authorSuccess = await getAuthorization();
        //Log.dTAG(TAG, "begin author2 token ==$authorSuccess");
        if (authorSuccess) {
          _token = authorSuccess;
          //initClient(_token);
        }
      });
      _dio.unlock();
    }
    //options.headers["Authorization"] = _token;
    return options;
  }

  @override
  onResponse(Response response) async {
    return response;
  }


  @override
  onError(DioError err) async {

    try {

      if (err?.response?.statusCode == 403) {
        Log.dTAG(TAG, "DioError auth 异常 $err");
        _dio.lock();
        _dio.interceptors.responseLock.lock();
        _dio.interceptors.errorLock.lock();

        await _lock.synchronized(() async {
          await LocalStorage.save(Config.API_KEY, "");
          await clearAuthorization();
          // Only this block can run (once) until done
          var authorSuccess = await getAuthorization();
          if (authorSuccess) {
            _token = authorSuccess;
            //initClient(_token);
          }
        });
        _dio.unlock();
        _dio.interceptors.responseLock.unlock();
        _dio.interceptors.errorLock.unlock();
        return _dio.request(err.request.path,options:err.request);
      }
    } catch (e,s) {
      Log.i2(e,s);
    }
    return err; // continue;
  }

  ///清除授权
  clearAuthorization() async{
    _token = false;
 //   LocalStorage.remove(Config.TOKEN_KEY);
  //  releaseClient();
  }

  ///获取授权token
  getAuthorization() async {
    String apiKey  = await LocalStorage.get(Config.API_KEY);
    Log.dTAG(TAG,"getAuthorization apiKey==$apiKey");
    /*if (apiKey==null||apiKey.isEmpty) {
      var randomKey = await Config.getApiKey();
      var rscKey = await EncryptUtil.rsaEncode(randomKey,publicKey:Config.publicKeyString);
      Options option = Options(method:"post");
      String id = DeviceInfo.identifier;
      option.headers = {"SBID":id};
      //Log.debug(TAG,"$")
      //Log.debug(TAG,"randomKey "+randomKey);
      Log.dTAG(TAG,"getAuthorization randomKey $randomKey");
      Response response;
      try {
        response = await Dio().request(Address.getAuthorization(),data: {"X-API-KEY":rscKey}, options: option);
        int code = response.statusCode;
        Log.dTAG(TAG,"getAuthorization response.statusCode $code ${response.statusMessage}");
        switch(code){
          case 200:
            await LocalStorage.save(Config.API_KEY,randomKey);
            return true;
            break;
        }
      } on Error catch (e,s) {
        //e.stackTrace;
        Log.d("$e $s");
        return false;
      }
      return false;
    }else{
      return true;
    }*/

  }
}