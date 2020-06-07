class YMTHomeDataModel {
  final Ab ab;
  final Banner banner;
  final NewComer newComer;

  YMTHomeDataModel({this.ab, this.banner, this.newComer});

  factory YMTHomeDataModel.fromJson(Map<String, dynamic> json) {
    Ab ab = Ab.fromJson(json['ab']);
    Banner banner = Banner.fromJson(json['banner']);
    NewComer newComer = NewComer.fromJson(json['newComer']);
    return YMTHomeDataModel(
      ab: ab,
      banner: banner,
      newComer: newComer
    );
  }
}

class Ab {
  final List<int> viewSequence;
  final int preloadingCount;
  final int loadingSequence;

  Ab({this.viewSequence, this.preloadingCount, this.loadingSequence});

  factory Ab.fromJson(Map<String, dynamic> json) {
    List<int> viewSequence = json['viewSequence'].cast<int>();
    int preloadingCount = json['preloadingCount'];
    int loadingSequence = json['loadingSequence'];
    return Ab(viewSequence: viewSequence, preloadingCount: preloadingCount, loadingSequence: loadingSequence);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['viewSequence'] = this.viewSequence;
    data['preloadingCount'] = this.preloadingCount;
    data['loadingSequence'] = this.loadingSequence;
    return data;
  }
}

class Banner {
  final List<BannerList> bannerList;
  final String popupInfo;
  final int bannerHeight;
  final int bannerUserType;

  Banner(
      {this.bannerList,
      this.popupInfo,
      this.bannerHeight,
      this.bannerUserType});

  factory Banner.fromJson(Map<String, dynamic> json) {
    List<BannerList> bannerList = List<BannerList>();
    if (json['bannerList'] != null) {
      (json['bannerList'] as List).forEach((v) {
        bannerList.add(BannerList.fromJson(v));
      });
    }
    String popupInfo = json['popupInfo'];
    int bannerHeight = json['bannerHeight'];
    int bannerUserType = json['bannerUserType'];
    return Banner(
      bannerList: bannerList,
      popupInfo: popupInfo,
      bannerHeight: bannerHeight,
      bannerUserType: bannerUserType
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.bannerList != null) {
      data['bannerList'] = this.bannerList.map((v) => v.toJson()).toList();
    }
    data['popupInfo'] = this.popupInfo;
    data['bannerHeight'] = this.bannerHeight;
    data['bannerUserType'] = this.bannerUserType;
    return data;
  }
}

class BannerList {
  final int bannerId;
  final int type;
  final String pic;
  final String title;
  final String shareLink;
  final String url;
  final String href;
  final String backColor;

  BannerList({
    this.bannerId,
    this.type,
    this.pic,
    this.title,
    this.shareLink,
    this.url,
    this.href,
    this.backColor
  });

  factory BannerList.fromJson(Map<String, dynamic> json) {
    int bannerId = json['bannerId'];
    int type = json['type'];
    String pic = json['pic'];
    String title = json['title'];
    String shareLink = json['shareLink'];
    String url = json['url'];
    String href = json['href'];
    String backColor = json['backColor'];
    return BannerList(
      bannerId: bannerId,
      type: type,
      pic: pic,
      title: title,
      shareLink: shareLink,
      url: url,
      href: href,
      backColor: backColor
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['bannerId'] = this.bannerId;
    data['type'] = this.type;
    data['pic'] = this.pic;
    data['title'] = this.title;
    data['shareLink'] = this.shareLink;
    data['url'] = this.url;
    data['href'] = this.href;
    data['backColor'] = this.backColor;
    return data;
  }
}

class NewComer {
  final MainBanner mainBanner;
  final List<Banner> banner;
  final String url;
  final String icon;
  final bool received;
  final int userType;
  final String bannerModule;
  final bool exBanner;

  NewComer({
    this.mainBanner,
    this.banner,
    this.url,
    this.icon,
    this.received,
    this.userType,
    this.bannerModule,
    this.exBanner
  });

  factory NewComer.fromJson(Map<String, dynamic> json) {
    MainBanner mainBanner = json['mainBanner'] != null
        ? MainBanner.fromJson(json['mainBanner'])
        : null;
    List<Banner> banner = List<Banner>();
    if (json['banner'] != null) {
      json['banner'].forEach((v) {
        banner.add(Banner.fromJson(v));
      });
    }
    String url = json['url'];
    String icon = json['icon'];
    bool received = json['received'];
    int userType = json['userType'];
    String bannerModule = json['bannerModule'];
    bool exBanner = json['exBanner'];
    return NewComer(
      mainBanner: mainBanner,
      banner: banner,
      url: url,
      icon: icon,
      received: received,
      userType: userType,
      bannerModule: bannerModule,
      exBanner: exBanner
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.mainBanner != null) {
      data['mainBanner'] = this.mainBanner.toJson();
    }
    if (this.banner != null) {
      data['banner'] = this.banner.map((v) => v.toJson()).toList();
    }
    data['url'] = this.url;
    data['icon'] = this.icon;
    data['received'] = this.received;
    data['userType'] = this.userType;
    data['bannerModule'] = this.bannerModule;
    data['exBanner'] = this.exBanner;
    return data;
  }
}

class MainBanner {
  final int height;
  final String picUrl;
  final String url;

  MainBanner({this.height, this.picUrl, this.url});

  factory MainBanner.fromJson(Map<String, dynamic> json) {
    int height = json['height'];
    String picUrl = json['picUrl'];
    String url = json['url'];
    return MainBanner(
      height: height,
      picUrl: picUrl,
      url: url
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['height'] = this.height;
    data['picUrl'] = this.picUrl;
    data['url'] = this.url;
    return data;
  }
}