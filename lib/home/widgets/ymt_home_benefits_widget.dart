import 'package:flutter/material.dart';
import 'package:ymatou/common/ymt_text_style.dart';

class YMTHomeBenefitsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
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
                      icon: Icon(Icons.chat),
                      text: Text(
                        '包邮包税',
                        style: red_10,
                      ),
                      tailSpacing: 8,
                    ),
                    Label(
                      icon: Icon(Icons.chat),
                      text: Text(
                        '新人专享',
                        style: red_10,
                      ),
                      tailSpacing: 8,
                    ),
                    Label(
                      icon: Icon(Icons.chat),
                      text: Text(
                        '无门槛券',
                        style: red_10,
                      ),
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
  final Icon icon;
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