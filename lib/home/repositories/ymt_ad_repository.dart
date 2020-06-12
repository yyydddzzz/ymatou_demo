import 'package:dio/dio.dart';
import 'package:ymatou/common/network/ymt_http_manager.dart';
import 'package:ymatou/home/models/ymt_ad_model.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class YMTAdRepository {
  Future<YMTAdModel> fetchData() async {
    // final path = '/globalconf/globalconfig';
    // Response response = await YMTHttpManager().get(path);
    // return YMTAdModel.fromJson(response.data);
    String jsonString = await rootBundle.loadString('assets/json/globalconfig.json');
    return Future.delayed(Duration(milliseconds: 100), () {
      return YMTAdModel.fromJson(json.decode(jsonString));
    });
  }
}