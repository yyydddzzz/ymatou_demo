import 'package:flutter/material.dart';
import 'package:ymatou/common/ymt_asset_path.dart';
import 'package:ymatou/common/ymt_text_style.dart';

class YMTFlashSaleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlashSaleTitleLabel(),
    );
  }
}

class FlashSaleTitleLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12),
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 3,
            children: <Widget>[
              Text(
                '限时特卖',
                style: black_18_w600,
              ),
              SizedBox(width: 2,),
              CircleAvatar(
                radius: 10,
                child: Text(
                  '09',
                  style: white_13_w600,
                ),
                backgroundColor: Colors.black,
              ),
              Text(
                ':',
                style: black_18_w600,
              ),
              CircleAvatar(
                radius: 10,
                child: Text(
                  '14',
                  style: white_13_w600,
                ),
                backgroundColor: Colors.black,
              ),
              Text(
                ':',
                style: black_18_w600,
              ),
              CircleAvatar(
                radius: 10,
                child: Text(
                  '02',
                  style: white_13_w600,
                ),
                backgroundColor: Colors.black,
              ),
              SizedBox(width: 2,),
              Text(
                '10点场',
                style: light_grey_13,
              )
            ],
          ),
          FlatButton(
            onPressed: () {},
            child: Row(
              children: <Widget>[
                Text(
                  '更多',
                  style: light_grey_12,
                ),
                Image.asset(arrow_right),
              ],
            ),
          )
        ],
      ),
    );
  }
}