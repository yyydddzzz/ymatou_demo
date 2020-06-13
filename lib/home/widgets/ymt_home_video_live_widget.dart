import 'package:flutter/material.dart';
import 'package:ymatou/common/ymt_asset_path.dart';
import 'package:ymatou/common/ymt_text_style.dart';

class YMTHomeViewLiveWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          VideoLiveGridView(),
        ],
      ),
    );
  }
}

class VideoLiveGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12, right: 0),
      height: 370,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 6,
          childAspectRatio: 3 / 2,
        ),
        itemCount: 15,
        itemBuilder: (context, index) {
          return VideoLiveItemWidget();
        },
      ),
    );
  }
}

class VideoLiveItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xff989292),
      ),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Image.network('http://pic1.ymatou.com/G03/M08/C6/13/CgzUIF7e7xqAJNn0AAyAoqsoEug870_169_225_o.jpg', width: 120, height: 120, fit: BoxFit.cover,),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 48, top: 2),
                      child: Text(
                        '¥16488',
                        style: white_12_w600,
                      ),
                    ),
                    SizedBox(height: 4,),
                    Container(
                      padding: EdgeInsets.only(left: 6, right: 6),
                      child: Text(
                        '日本丨🉐️中古当铺首饰大直播',
                        style: white_12_w600,
                        maxLines: 2,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 90,
            child: Container(
              height: 30,
              width: 120,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.grey[300], Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
                ),
              ),
            ),
          ),
          Positioned(
            top: 98,
            left: 8,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                  image: NetworkImage('http://pic1.ymatou.com/G03/shangou/M01/4F/AC/CgzUFV6fnA2AY7-zAANzrIBR-WI211_667_500_n_w_lb.jpg'),
                )
              ),
              width: 36,
              height: 36,
            )
          ),
          Container(
            padding: EdgeInsets.only(left: 5, right: 3),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xfffe1c7e), Color(0xffdb0de9)],
              ),
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(8)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset(ic_living),
                SizedBox(width: 3,),
                Text(
                  '6948人',
                  style: white_12_w600,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}