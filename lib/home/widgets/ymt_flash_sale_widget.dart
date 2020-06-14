import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ymatou/common/ymt_asset_path.dart';
import 'package:ymatou/common/ymt_text_style.dart';
import 'package:ymatou/home/models/ymt_home_data_model.dart';

class YMTFlashSaleWidget extends StatelessWidget {
  final FlashSale flashSale;
  YMTFlashSaleWidget({@required this.flashSale});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12, right: 12),
      child: Column(
        children: <Widget>[
          FlashSaleTitleLabel(endTime: flashSale.endtime, timeDesc: flashSale.timeDesc, nextUrl: flashSale.nextUrl,),
          FlashSaleItemView(panic: flashSale.panic,)
        ],
      ),
    );
  }
}

class FlashSaleTitleLabel extends StatefulWidget {
  final int endTime;
  final String timeDesc;
  final String nextUrl;

  FlashSaleTitleLabel({Key key, this.endTime, this.timeDesc, this.nextUrl}) : super(key: key);

  @override
  _FlashSaleTitleLabelState createState() => _FlashSaleTitleLabelState();
}

class _FlashSaleTitleLabelState extends State<FlashSaleTitleLabel> {
  String _hour;
  String _minute;
  String _second;
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _countdown();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _getDiff() {
    DateTime time = DateTime.fromMillisecondsSinceEpoch(widget.endTime);
    Duration diff = time.difference(DateTime.now());
    _hour = diff.inHours < 10 ? '0${diff.inHours.toString()}' : diff.inHours.toString();
    _minute = (diff.inMinutes % 60) < 10 ? '0${(diff.inMinutes % 60).toString()}' : (diff.inMinutes % 60).toString();
    _second = (diff.inSeconds % 60) < 10 ? '0${(diff.inSeconds % 60).toString()}' : (diff.inSeconds % 60).toString();
  }

  void _countdown() {
    _getDiff();
    _timer = Timer.periodic(Duration(seconds: 1), (t) { 
       setState(() {
         _getDiff();
       });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
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
                radius: 9,
                child: Text(
                  _hour,
                  style: white_12_w600,
                ),
                backgroundColor: Colors.black,
              ),
              Text(
                ':',
                style: black_18_w600,
              ),
              CircleAvatar(
                radius: 9,
                child: Text(
                  _minute,
                  style: white_12_w600,
                ),
                backgroundColor: Colors.black,
              ),
              Text(
                ':',
                style: black_18_w600,
              ),
              CircleAvatar(
                radius: 9,
                child: Text(
                  _second,
                  style: white_12_w600,
                ),
                backgroundColor: Colors.black,
              ),
              SizedBox(width: 2,),
              Text(
                widget.timeDesc,
                style: light_grey_13,
              )
            ],
          ),
          GestureDetector(
            onTap: () { print(widget.nextUrl); },
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

class FlashSaleItemView extends StatelessWidget {
  final List<Panic> panic;
  FlashSaleItemView({this.panic});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: panic.length,
        separatorBuilder: (context, index) {
          return SizedBox(width: 6,);
        },
        itemBuilder: (context, index) {
          Panic item = panic[index];
          return GestureDetector(
            onTap: () {print('object');},
            child: Container(
              width: 76,
              child: Wrap(
                spacing: 6,
                direction: Axis.vertical,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    clipBehavior: Clip.hardEdge,
                    child: Stack(
                      children: <Widget>[
                        Image.network(
                          item.pordPic, 
                          width: 76, 
                          height: 76,
                        ),
                        Container(
                          width: 76,
                          height: 76,
                          color: Colors.grey.withOpacity(0.2),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Image.network(
                        item.countryFlag, 
                        width: 12, 
                        height: 12,
                      ),
                      SizedBox(width: 6),
                      Text(
                        item.brandName,
                        style: TextStyle(fontSize: 12, color: Color(0xff676767)),
                      ),
                    ],
                  ),
                  Container(
                    width: 76,
                    child: Text(
                      item.activityName,
                      style: TextStyle(fontSize: 13),
                      maxLines: 1,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        '¥',
                        style: TextStyle(fontSize: 11, color: Colors.red, fontWeight: FontWeight.bold, height: 1.4),
                      ),
                      Text(
                        item.price.toString(),
                        style: TextStyle(fontSize: 13, color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 2,),
                      Text(
                        item.marketPrice.toString(),
                        style: TextStyle(
                          fontSize: 11,
                          color: Color(0xffcacccd),
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}