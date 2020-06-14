import 'package:dio/dio.dart';
import 'package:ymatou/common/network/ymt_http_manager.dart';
import 'package:ymatou/home/models/ymt_home_data_model.dart';
import 'package:ymatou/home/models/ymt_business_config_model.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class YMTHomeRepository {
  Future fetchData() async {
    // final path = '/nodehome/home';
    // final String modules = '1001,1030,1027,1031,1020,1005,1024,1028,1032,1033,1026,1010';
    // final Map<String, dynamic> query = {'requestAB': 1, 'modules': modules};
    // Response response = await YMTHttpManager().get(path, query: query);
    // return YMTHomeDataModel.fromJson(response.data);
    return Future.wait([rootBundle.loadString('assets/json/businessconfiglist.json'), rootBundle.loadString('assets/json/home.json')]).then((value) {
      return {
        'homeModel' : YMTHomeDataModel.fromJson(json.decode(value.last)),
        'businessConfigModel' : YMTBusinessConfigModel.fromJson(json.decode(value.first)),
      };
    });
  }
}
