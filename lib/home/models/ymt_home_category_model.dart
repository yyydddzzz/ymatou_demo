class YMTHomeCategoryModel {
  final String name;
  final String pic;
  final int type;
  final String url;
  final int id;

  YMTHomeCategoryModel({
    this.name,
    this.pic,
    this.type,
    this.url,
    this.id
  });

  YMTHomeCategoryModel.fromJson(Map<String, dynamic> json) 
    : name = json['name'],
      pic = json['pic'],
      type = json['type'],
      url = json['url'],
      id = json['id'];
}