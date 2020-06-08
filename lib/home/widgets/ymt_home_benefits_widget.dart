import 'package:flutter/material.dart';
import 'package:ymatou/common/ymt_text_style.dart';
import 'package:ymatou/common/ymt_asset_path.dart';

class YMTHomeBenefitsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
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