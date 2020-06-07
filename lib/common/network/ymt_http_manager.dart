import 'dart:io';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

class YMTHttpManager {
  Dio _dio;
  BaseOptions options;
  static Map<String, dynamic> headers = {
    'app-key': '',
    'sign': '',
    'cookieid': '',
    'ymt-pars': 'os=8.0.0&format=json&channel=huawei&type=buyer&network=wifi&yid=4402ab90-3d86-4b10-90fd-d7cbb0cd5cdc&requestid=ffffffff-83c3-5578-b53e-3975218cfa221591344240127&imei=867698031089983&client=android&machinename=AUM-AL00&oaid=fd3f8fb1-29c7-74ac-d764-ffeddffb948e&androidid=5899914777942892',
    'deviceid': '',
    'app-version': '6.8.16',
    'timestamp': DateTime.now().millisecondsSinceEpoch.toString(),
    'user-agent': 'okhttp/3.11.0',
  };
  
  YMTHttpManager({
    this.options,
  }) {
    options ??= BaseOptions(
      baseUrl: 'https://app.ymatou.com/api',
      connectTimeout: 15000,
      headers: headers,
    );
    _dio = Dio(options);
    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate  = (client) {
      client.findProxy = (uri) {
        return 'PROXY 192.168.1.102:8888';
      };
      client.badCertificateCallback = (X509Certificate cert, String host, int port){
          return true;
      };
    };
  }
  
  get(String path, {Map<String, dynamic> query}) async {
    try {
      Response response = await _dio.get(path, queryParameters: query);
      return response;
    } on DioError catch(e) {
      print(e);
    }
  }

  post(String path, {Map<String, dynamic> query}) async {
    try {
      Response response = await _dio.post(path, queryParameters: query);
      return response;
    } on DioError catch(e) {
      print(e);
    }
  }
}