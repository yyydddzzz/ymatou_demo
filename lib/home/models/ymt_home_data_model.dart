class YMTHomeDataModel {
  final Ab ab;
  final Banner banner;
  final NewComer newComer;
  final List<SubChannel> subChannel;
  final List<Advertisement> advertisement;
  final FlashSale flashSale;
  final VideoLive videoLive;

  YMTHomeDataModel({this.ab, this.banner, this.newComer, this.subChannel, this.advertisement, this.flashSale, this.videoLive});

  factory YMTHomeDataModel.fromJson(Map<String, dynamic> json) {
    Ab ab = Ab.fromJson(json['ab']);
    Banner banner = Banner.fromJson(json['banner']);
    NewComer newComer = NewComer.fromJson(json['newComer']);
    List<SubChannel> subChannel = List<SubChannel>();
    if (json['subChannel'] != null) {
      (json['subChannel'] as List).forEach((v) {
        subChannel.add(SubChannel.fromJson(v));
      });
    }
    List<Advertisement> advertisement = List<Advertisement>();
    if (json['advertisement'] != null) {
      (json['advertisement'] as List).forEach((v) {
        advertisement.add(Advertisement.fromJson(v));
      });
    }
    FlashSale flashSale = FlashSale.fromJson(json['flashSale']);
    VideoLive videoLive = VideoLive.fromJson(json['videoLive']);
    return YMTHomeDataModel(
      ab: ab,
      banner: banner,
      newComer: newComer,
      subChannel: subChannel,
      advertisement: advertisement,
      flashSale: flashSale,
      videoLive: videoLive,
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
    String backColor = json['backColor'] ?? 'd1303e';
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
  final List<BannerItem> banner;
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
    List<BannerItem> banner = List<BannerItem>();
    if (json['banner'] != null) {
      json['banner'].forEach((v) {
        banner.add(BannerItem.fromJson(v));
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

class BannerItem {
  int height;
  List<NewComerBannerList> bannerList;
  int rowId;

  BannerItem({this.height, this.bannerList, this.rowId});

  BannerItem.fromJson(Map<String, dynamic> json) {
    height = json['height'];
    if (json['bannerList'] != null) {
      bannerList = new List<NewComerBannerList>();
      json['bannerList'].forEach((v) {
        bannerList.add(new NewComerBannerList.fromJson(v));
      });
    }
    rowId = json['rowId'];
  }
}

class NewComerBannerList {
  final int height;
  final String picUrl;
  final String url;

  NewComerBannerList.fromJson(Map<String, dynamic> json) 
    : height = json['height'],
      picUrl = json['picUrl'],
      url = json['url'];
}

class SubChannel {
  final String name;
  final String pic;
  final int type;
  final String url;
  final int id;

  SubChannel.fromJson(Map<String, dynamic> json) 
    : name = json['name'],
      pic = json['pic'],
      type = json['type'],
      url = json['url'],
      id = json['id'];
}

class Advertisement {
  final int height;
  final String picUrl;
  final String url;
  final int type;

  Advertisement.fromJson(Map<String, dynamic> json) 
    : height = json['height'],
      picUrl = json['picUrl'],
      type = json['type'],
      url = json['url'];
}

class FlashSale {
  final List<Panic> panic;
  final int endtime;
  final String timeDesc;
  final String nextUrl;

  FlashSale({this.panic, this.endtime, this.timeDesc, this.nextUrl});

  factory FlashSale.fromJson(Map<String, dynamic> json) {
    List<Panic> panic = List<Panic>();
    if (json['panic'] != null) {
      json['panic'].forEach((v) {
        panic.add(Panic.fromJson(v));
      });
    }
    int endtime = json['endtime'];
    String timeDesc = json['timeDesc'];
    String nextUrl = json['nextUrl'];
    return FlashSale(
      panic: panic,
      endtime: endtime,
      timeDesc: timeDesc,
      nextUrl: nextUrl
    );
  }
}

class Panic {
  int endtime;
  String begintime;
  String href;
  String id;
  String pic;
  int type;
  String brandName;
  String stockLabel;
  int marketPrice;
  int stockType;
  String sellingPoint;
  String countryFlag;
  int price;
  String pordPic;
  int tradingSpecial;
  String name;
  String activityName;

  Panic(
      {this.endtime,
      this.begintime,
      this.href,
      this.id,
      this.pic,
      this.type,
      this.brandName,
      this.stockLabel,
      this.marketPrice,
      this.stockType,
      this.sellingPoint,
      this.countryFlag,
      this.price,
      this.pordPic,
      this.tradingSpecial,
      this.name,
      this.activityName});

  Panic.fromJson(Map<String, dynamic> json) {
    endtime = json['endtime'];
    begintime = json['begintime'];
    href = json['href'];
    id = json['id'];
    pic = json['pic'];
    type = json['type'];
    brandName = json['brandName'];
    stockLabel = json['stockLabel'];
    marketPrice = json['marketPrice'];
    stockType = json['stockType'];
    sellingPoint = json['sellingPoint'];
    countryFlag = json['countryFlag'];
    price = json['price'];
    pordPic = json['pordPic'];
    tradingSpecial = json['tradingSpecial'];
    name = json['name'];
    activityName = json['activityName'];
  }
}

class VideoLive {
  List<VideoLiveItem> list;
  String url;
  Null productList;
  int tabId;

  VideoLive({this.list, this.url, this.productList, this.tabId});

  VideoLive.fromJson(Map<String, dynamic> json) {
    if (json['list'] != null) {
      list = List<VideoLiveItem>();
      json['list'].forEach((v) {
        list.add(VideoLiveItem.fromJson(v));
      });
    }
    url = json['url'];
    productList = json['productList'];
    tabId = json['tabId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.list != null) {
      data['list'] = this.list.map((v) => v.toJson()).toList();
    }
    data['url'] = this.url;
    data['productList'] = this.productList;
    data['tabId'] = this.tabId;
    return data;
  }
}

class VideoLiveItem {
  String countryName;
  int liveId;
  String picUrl;
  int preViewNum;
  int viewNum;
  int sellerId;
  int status;
  String title;
  String startTimeDesc;
  String avatar;
  String name;
  int seckillState;
  Product product;

  VideoLiveItem(
      {this.countryName,
      this.liveId,
      this.picUrl,
      this.preViewNum,
      this.viewNum,
      this.sellerId,
      this.status,
      this.title,
      this.startTimeDesc,
      this.avatar,
      this.name,
      this.seckillState,
      this.product});

  VideoLiveItem.fromJson(Map<String, dynamic> json) {
    countryName = json['countryName'];
    liveId = json['liveId'];
    picUrl = json['picUrl'];
    preViewNum = json['preViewNum'];
    viewNum = json['viewNum'];
    sellerId = json['sellerId'];
    status = json['status'];
    title = json['title'];
    startTimeDesc = json['startTimeDesc'];
    avatar = json['avatar'];
    name = json['name'];
    seckillState = json['seckillState'];
    product =
        json['product'] != null ? Product.fromJson(json['product']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['countryName'] = this.countryName;
    data['liveId'] = this.liveId;
    data['picUrl'] = this.picUrl;
    data['preViewNum'] = this.preViewNum;
    data['viewNum'] = this.viewNum;
    data['sellerId'] = this.sellerId;
    data['status'] = this.status;
    data['title'] = this.title;
    data['startTimeDesc'] = this.startTimeDesc;
    data['avatar'] = this.avatar;
    data['name'] = this.name;
    data['seckillState'] = this.seckillState;
    if (this.product != null) {
      data['product'] = this.product.toJson();
    }
    return data;
  }
}

class Product {
  String pic;
  String id;
  int price;
  int seckillState;

  Product({this.pic, this.id, this.price, this.seckillState});

  Product.fromJson(Map<String, dynamic> json) {
    pic = json['pic'];
    id = json['id'];
    price = json['price'];
    seckillState = json['seckillState'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['pic'] = this.pic;
    data['id'] = this.id;
    data['price'] = this.price;
    data['seckillState'] = this.seckillState;
    return data;
  }
}
