import 'package:flutter/material.dart';
import 'package:ymatou/common/ymt_asset_path.dart';
import 'package:ymatou/common/ymt_text_style.dart';
import 'ymt_home_prod_type1_widget.dart';
import 'ymt_home_prod_type2_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class YMTHomeGuessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Widget> list = <Widget>[
      YMTHomeProdType1Widget(),
      YMTHomeProdType2Widget(),
      YMTHomeProdType1Widget(),
      YMTHomeProdType1Widget(),
      YMTHomeProdType2Widget(),
      YMTHomeProdType2Widget(),
      YMTHomeProdType2Widget(),
      YMTHomeProdType2Widget(),
      YMTHomeProdType1Widget(),
      YMTHomeProdType2Widget(),
      YMTHomeProdType1Widget(),
      YMTHomeProdType2Widget(),
      YMTHomeProdType1Widget(),
      YMTHomeProdType1Widget(),
      YMTHomeProdType1Widget(),
      YMTHomeProdType2Widget(),
      YMTHomeProdType2Widget(),
      YMTHomeProdType1Widget(),
      YMTHomeProdType2Widget(),
      YMTHomeProdType1Widget(),
      YMTHomeProdType2Widget(),
      YMTHomeProdType2Widget(),
      YMTHomeProdType1Widget(),
      YMTHomeProdType1Widget(),
      YMTHomeProdType2Widget(),
      YMTHomeProdType2Widget(),
      YMTHomeProdType2Widget(),
      YMTHomeProdType1Widget(),
      YMTHomeProdType2Widget(),
      YMTHomeProdType2Widget(),
      YMTHomeProdType1Widget(),
    ];
    return Column(
      children: <Widget>[
        YMTHomeGuessHeaderView(),
        StaggeredGridView.countBuilder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.all(8),
          crossAxisCount: 4,  
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) => list[index],  //返回的组件即为每个item。
          staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        )
      ],
    );
  }
}

class YMTHomeGuessHeaderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12, top: 12, right: 12),
      child: Row(
        children: <Widget>[
          Text(
            '猜你喜欢',
            style: black_18_w600,
          ),
          SizedBox(width: 4,),
          Image.asset(ic_guess_like_title),
        ],
      ),
    );
  }
}