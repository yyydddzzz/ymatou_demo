import 'package:flutter/material.dart';
import 'package:ymatou/common/ymt_text_style.dart';
import 'package:ymatou/common/ymt_asset_path.dart';
import 'package:ymatou/home/models/ymt_home_data_model.dart';

class YMTHomeBenefitsWidget extends StatelessWidget {
  final NewComer newComer;

  YMTHomeBenefitsWidget({@required this.newComer});

  Widget _newComerBannerView(BuildContext context) {
    List<Widget> bannerView = <Widget>[Image.network(newComer.mainBanner.picUrl)];
    for (BannerItem bannerItem in newComer.banner) {
      List<Widget> itemList = <Widget>[];
      for (NewComerBannerList item in bannerItem.bannerList) {
        itemList.add(Container(
          width: MediaQuery.of(context).size.width / bannerItem.bannerList.length,
          child: Image.network(item.picUrl),
        ));
      }
      bannerView.add(Row(children: itemList,));
    }
    return Column(children: bannerView,);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '新人福利',
                  style: black_18_w600,
                ),
                Row(
                  children: <Widget>[
                    Label(
                      icon: Image.asset(home_newbie_welfare_icon1),
                      text: Text(
                        '包邮包税',
                        style: red_10,
                      ),
                      spacing: 6,
                      tailSpacing: 12,
                    ),
                    Label(
                      icon: Image.asset(home_newbie_welfare_icon2),
                      text: Text(
                        '新人专享',
                        style: red_10,
                      ),
                      spacing: 6,
                      tailSpacing: 12,
                    ),
                    Label(
                      icon: Image.asset(home_newbie_welfare_icon3),
                      text: Text(
                        '无门槛券',
                        style: red_10,
                      ),
                      spacing: 6,
                    )
                  ],
                )
              ],
            ),
          ),
          _newComerBannerView(context),
        ],
      ),
    );
  }
}

class Label extends StatelessWidget {
  final Text text;
  final Image icon;
  final double spacing;
  final double tailSpacing;

  Label({this.text, this.icon, this.spacing, this.tailSpacing});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          icon,
          SizedBox(width: spacing,),
          text,
          SizedBox(width: tailSpacing,),
        ],
      ),
    );
  }
}