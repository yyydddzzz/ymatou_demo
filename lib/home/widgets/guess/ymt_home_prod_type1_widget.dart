import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ymatou/common/ymt_asset_path.dart';
import 'package:ymatou/common/ymt_text_style.dart';

class YMTHomeProdType1Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      clipBehavior: Clip.hardEdge,
      child: Stack(
        children: <Widget>[
          Image.network(
            'http://pic1.ymatou.com/G03/shangou/M02/56/71/CgzUH162Eq-ABZrFAAH6ZV-YWDM223_1_1_n_w_lb.jpg',
            width: 165,
            height: 295,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              padding: EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                color: Colors.black.withOpacity(0.4),
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 18,
                    padding: EdgeInsets.only(left: 6),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xfffe1c7e), Color(0xffdb0de9)],
                      ),
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(25.0)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset(ic_living),
                        SizedBox(width: 3,),
                        Text(
                          '直播中',
                          style: white_11,
                        ),
                        SizedBox(width: 4,)
                      ],
                    ),
                  ),
                  SizedBox(width: 4,),
                  Text('4499围观', style: white_11,),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: ClipRect(
              child: BackdropFilter(
                filter:ImageFilter.blur(sigmaX:8, sigmaY:8),
                child:Container(
                  padding: EdgeInsets.only(left: 12, right: 12),
                  height: 80,
                  width: 165,
                  color: Colors.white.withOpacity(0.06),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Text(
                          '古由卡 街头涂鸦星人五分袖T恤印花运动短袖t  F4041',
                          style: white_14,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8), 
                        child: Row(
                          children: <Widget>[
                            Image.network('http://img.ymatou.com/app/flag/circle/importtrade.png', width: 15, height: 15,),
                            SizedBox(width: 3,),
                            Text(
                              '古由卡旗舰店 | 美国',
                              style: white_12,
                            ),
                          ],
                        )
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}