import 'package:flutter/material.dart';
import 'package:ymatou/common/ymt_asset_path.dart';
import 'package:ymatou/common/ymt_text_style.dart';
import 'package:ymatou/home/models/ymt_home_data_model.dart';

class YMTHomeViewLiveWidget extends StatelessWidget {
  final VideoLive videoLive;
  YMTHomeViewLiveWidget({@required this.videoLive});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          VideoLiveTitleLabel(),
          VideoLiveGridView(videoLiveList: videoLive.list,),
        ],
      ),
    );
  }
}

class VideoLiveTitleLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12, right: 12),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                '海淘直播',
                style: black_18_w600,
              ),
              FlatButton(
                child: Image.network('https://pic1.ymatou.com/G02/M01/E8/5A/CgzUCl01LiaAR-HYAABSlQMrQXA551_33_4_o.png', height: 22),
                onPressed: () {},
              )
            ],
          ),
          GestureDetector(
            onTap: () {  },
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

class VideoLiveGridView extends StatelessWidget {
  final List<VideoLiveItem> videoLiveList;
  VideoLiveGridView({@required this.videoLiveList});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12, right: 12),
      height: 180,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 6,
          childAspectRatio: 3 / 2,
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          return VideoLiveItemWidget(videoLiveItem: videoLiveList[index]);
        },
      ),
    );
  }
}

class VideoLiveItemWidget extends StatelessWidget {
  final VideoLiveItem videoLiveItem;
  VideoLiveItemWidget({@required this.videoLiveItem});
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
              Image.network(videoLiveItem.picUrl, width: 120, height: 120, fit: BoxFit.cover,),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 48, top: 2),
                      child: Text(
                        '¥${videoLiveItem?.product?.price}',
                        style: white_12_w600,
                      ),
                    ),
                    SizedBox(height: 3,),
                    Container(
                      padding: EdgeInsets.only(left: 6, right: 6),
                      child: Text(
                        '${videoLiveItem.countryName}丨${videoLiveItem.title}',
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
                  image: NetworkImage(videoLiveItem?.product?.pic ?? ''),
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
                  '${videoLiveItem.viewNum}人',
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