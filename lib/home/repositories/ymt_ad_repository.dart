import 'package:dio/dio.dart';
import 'package:ymatou/common/network/ymt_http_manager.dart';
import 'package:ymatou/home/models/ymt_ad_model.dart';

class YMTAdRepository {
  Future<YMTAdModel> fetchData() async {
    final path = '/globalconf/globalconfig';
    Response response = await YMTHttpManager().get(path);
    return YMTAdModel.fromJson(response.data);
  }
}