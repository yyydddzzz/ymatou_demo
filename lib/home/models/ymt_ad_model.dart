class YMTAdModel {
  final AdList adList;

  YMTAdModel({this.adList});

  factory YMTAdModel.fromJson(Map<String, dynamic> json) {
    AdList adList = AdList.fromJson(json['adList']);
    return YMTAdModel(adList: adList);
  }
}

class AdList {
  final List<AdItem> list;
  final int interval;
  final int maximum;

  AdList({this.list, this.interval, this.maximum});

  factory AdList.fromJson(Map<String, dynamic> json) {
     List<AdItem> list = List<AdItem>();
    if (json['list'] != null) {
      (json['list'] as List).forEach((v) {
        list.add(AdItem.fromJson(v));
      });
    }
    int interval = json['interval'];
    int maximum = json['maximum'];
    return AdList(list: list, interval: interval, maximum: maximum);
  }
}

class AdItem {
  final int id;
  final String pic;
  final String href;
  final int cd;
  final int version;
  final int startTime;
  final int endTime;
  final bool switchShow;

  AdItem({
    this.id,
    this.pic,
    this.href,
    this.cd,
    this.version,
    this.startTime,
    this.endTime,
    this.switchShow
  });

  factory AdItem.fromJson(Map<String, dynamic> json) {
    int id = json['id'];
    String pic = json['pic'];
    String href = json['href'];
    int cd = json['cd'];
    int version = json['version'];
    int startTime = json['startTime'];
    int endTime = json['endTime'];
    bool switchShow = json['switchShow'];
    return AdItem(id: id, pic: pic, href: href, cd: cd, version: version, startTime: startTime, endTime: endTime, switchShow: switchShow);
  }
}