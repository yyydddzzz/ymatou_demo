class YMTBusinessConfigModel {
  Configs configs;

  YMTBusinessConfigModel({this.configs});

  YMTBusinessConfigModel.fromJson(Map<String, dynamic> json) {
    configs =
        json['configs'] != null ? new Configs.fromJson(json['configs']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.configs != null) {
      data['configs'] = this.configs.toJson();
    }
    return data;
  }
}

class Configs {
  String diaryLimtLength;
  String compensationTens;
  String useHttps;
  String showNotificationTips;
  String sellerRegUrl;
  String vipMemberDetailUrl;
  String userSignUrl;
  String userExpDetailUrl;
  String deliveryNotice;
  String productDetailBannerPic;
  String productDetailBannerLink;
  String biboLetterPicV2;
  String biboLetter;
  String cartBannerPic;
  String cartBannerUrl;
  String showCartNum;
  bool monitor;
  String userCoinUrl;
  String safetyTips;
  String shareminiapp;
  String weex2;
  String homeActivityIconUrl;
  String homeActivityJumpUrl;
  String liveFollowTipTime;
  String liveFollowQuitTime;
  String recycle;
  String homeLiveSubtitlePic;
  String showThumbText;
  String mineLekaUrl;
  String lekaActiveUrl;
  String liveFollowTipTimeV2;
  String compensationTitle;
  String compensationDesc;
  String homeLiveUnrcvCouponUrl;
  String homeLiveRcvedCouponUrl;
  String mineGlobalOptUrl;
  String newHoneyQualityUrl;
  String oldHoneyQualityUrl;
  String newHoneyPlatformGteUrl;
  String serviceAssurance;
  String rebateRuleDesc;
  String fqlOpenTip;
  String canShanyanLogin;
  String htqMinVideoTime;
  String htqMaxVideoTime;
  int addressVersion;

  Configs(
      {this.diaryLimtLength,
      this.compensationTens,
      this.useHttps,
      this.showNotificationTips,
      this.sellerRegUrl,
      this.vipMemberDetailUrl,
      this.userSignUrl,
      this.userExpDetailUrl,
      this.deliveryNotice,
      this.productDetailBannerPic,
      this.productDetailBannerLink,
      this.biboLetterPicV2,
      this.biboLetter,
      this.cartBannerPic,
      this.cartBannerUrl,
      this.showCartNum,
      this.monitor,
      this.userCoinUrl,
      this.safetyTips,
      this.shareminiapp,
      this.weex2,
      this.homeActivityIconUrl,
      this.homeActivityJumpUrl,
      this.liveFollowTipTime,
      this.liveFollowQuitTime,
      this.recycle,
      this.homeLiveSubtitlePic,
      this.showThumbText,
      this.mineLekaUrl,
      this.lekaActiveUrl,
      this.liveFollowTipTimeV2,
      this.compensationTitle,
      this.compensationDesc,
      this.homeLiveUnrcvCouponUrl,
      this.homeLiveRcvedCouponUrl,
      this.mineGlobalOptUrl,
      this.newHoneyQualityUrl,
      this.oldHoneyQualityUrl,
      this.newHoneyPlatformGteUrl,
      this.serviceAssurance,
      this.rebateRuleDesc,
      this.fqlOpenTip,
      this.canShanyanLogin,
      this.htqMinVideoTime,
      this.htqMaxVideoTime,
      this.addressVersion});

  Configs.fromJson(Map<String, dynamic> json) {
    diaryLimtLength = json['diaryLimtLength'];
    compensationTens = json['compensationTens'];
    useHttps = json['useHttps'];
    showNotificationTips = json['showNotificationTips'];
    sellerRegUrl = json['sellerRegUrl'];
    vipMemberDetailUrl = json['vipMemberDetailUrl'];
    userSignUrl = json['userSignUrl'];
    userExpDetailUrl = json['userExpDetailUrl'];
    deliveryNotice = json['deliveryNotice'];
    productDetailBannerPic = json['productDetailBannerPic'];
    productDetailBannerLink = json['productDetailBannerLink'];
    biboLetterPicV2 = json['biboLetterPicV2'];
    biboLetter = json['biboLetter'];
    cartBannerPic = json['cartBannerPic'];
    cartBannerUrl = json['cartBannerUrl'];
    showCartNum = json['showCartNum'];
    monitor = json['monitor'];
    userCoinUrl = json['userCoinUrl'];
    safetyTips = json['safetyTips'];
    shareminiapp = json['shareminiapp'];
    weex2 = json['weex2'];
    homeActivityIconUrl = json['homeActivityIconUrl'];
    homeActivityJumpUrl = json['homeActivityJumpUrl'];
    liveFollowTipTime = json['liveFollowTipTime'];
    liveFollowQuitTime = json['liveFollowQuitTime'];
    recycle = json['recycle'];
    homeLiveSubtitlePic = json['homeLiveSubtitlePic'];
    showThumbText = json['showThumbText'];
    mineLekaUrl = json['mineLekaUrl'];
    lekaActiveUrl = json['lekaActiveUrl'];
    liveFollowTipTimeV2 = json['liveFollowTipTimeV2'];
    compensationTitle = json['compensationTitle'];
    compensationDesc = json['compensationDesc'];
    homeLiveUnrcvCouponUrl = json['home_liveUnrcvCouponUrl'];
    homeLiveRcvedCouponUrl = json['home_liveRcvedCouponUrl'];
    mineGlobalOptUrl = json['mineGlobalOptUrl'];
    newHoneyQualityUrl = json['newHoneyQualityUrl'];
    oldHoneyQualityUrl = json['oldHoneyQualityUrl'];
    newHoneyPlatformGteUrl = json['newHoneyPlatformGteUrl'];
    serviceAssurance = json['serviceAssurance'];
    rebateRuleDesc = json['rebateRuleDesc'];
    fqlOpenTip = json['fqlOpenTip'];
    canShanyanLogin = json['canShanyanLogin'];
    htqMinVideoTime = json['htqMinVideoTime'];
    htqMaxVideoTime = json['htqMaxVideoTime'];
    addressVersion = json['addressVersion'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['diaryLimtLength'] = this.diaryLimtLength;
    data['compensationTens'] = this.compensationTens;
    data['useHttps'] = this.useHttps;
    data['showNotificationTips'] = this.showNotificationTips;
    data['sellerRegUrl'] = this.sellerRegUrl;
    data['vipMemberDetailUrl'] = this.vipMemberDetailUrl;
    data['userSignUrl'] = this.userSignUrl;
    data['userExpDetailUrl'] = this.userExpDetailUrl;
    data['deliveryNotice'] = this.deliveryNotice;
    data['productDetailBannerPic'] = this.productDetailBannerPic;
    data['productDetailBannerLink'] = this.productDetailBannerLink;
    data['biboLetterPicV2'] = this.biboLetterPicV2;
    data['biboLetter'] = this.biboLetter;
    data['cartBannerPic'] = this.cartBannerPic;
    data['cartBannerUrl'] = this.cartBannerUrl;
    data['showCartNum'] = this.showCartNum;
    data['monitor'] = this.monitor;
    data['userCoinUrl'] = this.userCoinUrl;
    data['safetyTips'] = this.safetyTips;
    data['shareminiapp'] = this.shareminiapp;
    data['weex2'] = this.weex2;
    data['homeActivityIconUrl'] = this.homeActivityIconUrl;
    data['homeActivityJumpUrl'] = this.homeActivityJumpUrl;
    data['liveFollowTipTime'] = this.liveFollowTipTime;
    data['liveFollowQuitTime'] = this.liveFollowQuitTime;
    data['recycle'] = this.recycle;
    data['homeLiveSubtitlePic'] = this.homeLiveSubtitlePic;
    data['showThumbText'] = this.showThumbText;
    data['mineLekaUrl'] = this.mineLekaUrl;
    data['lekaActiveUrl'] = this.lekaActiveUrl;
    data['liveFollowTipTimeV2'] = this.liveFollowTipTimeV2;
    data['compensationTitle'] = this.compensationTitle;
    data['compensationDesc'] = this.compensationDesc;
    data['home_liveUnrcvCouponUrl'] = this.homeLiveUnrcvCouponUrl;
    data['home_liveRcvedCouponUrl'] = this.homeLiveRcvedCouponUrl;
    data['mineGlobalOptUrl'] = this.mineGlobalOptUrl;
    data['newHoneyQualityUrl'] = this.newHoneyQualityUrl;
    data['oldHoneyQualityUrl'] = this.oldHoneyQualityUrl;
    data['newHoneyPlatformGteUrl'] = this.newHoneyPlatformGteUrl;
    data['serviceAssurance'] = this.serviceAssurance;
    data['rebateRuleDesc'] = this.rebateRuleDesc;
    data['fqlOpenTip'] = this.fqlOpenTip;
    data['canShanyanLogin'] = this.canShanyanLogin;
    data['htqMinVideoTime'] = this.htqMinVideoTime;
    data['htqMaxVideoTime'] = this.htqMaxVideoTime;
    data['addressVersion'] = this.addressVersion;
    return data;
  }
}