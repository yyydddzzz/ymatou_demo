import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ymatou/common/ymt_text_style.dart';

class YMTHomeProdType2Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      clipBehavior: Clip.hardEdge,
      child: Wrap(
        direction: Axis.vertical,
        spacing: 6,
        crossAxisAlignment: WrapCrossAlignment.start,
        children: <Widget>[
          Image.network('http://pic1.ymatou.com/G02/shangou/M09/9D/59/CgzUC15jbWyADCOdAAHQMJlfXhs346_1_1_n_w_lb.jpg', width: 165, height: 165,),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: <Widget>[
                Image.network('http://img.ymatou.com/app/flag/circle/America.png', width: 15, height: 15,),
                SizedBox(width: 2,),
                Text(
                  '美国',
                  style: light_grey_12,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            width: 165,
            child: Text(
              '[清新糖果色调]Sam Edelman小高跟凉拖凉鞋穆勒鞋',
              style: black87_15,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 8),
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 4),
                  child: Text(
                    '¥',
                    style: TextStyle(
                      color: Color(0xfffe2051),
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Text(
                  '330',
                  style: TextStyle(
                    color: Color(0xfffe2051),
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}