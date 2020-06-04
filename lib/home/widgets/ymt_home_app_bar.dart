import 'package:flutter/material.dart';
import 'package:ymatou/common/ymt_asset_path.dart';
import 'package:ymatou/common/ymt_text_style.dart';

class YMTHomeAppBar {
  final BuildContext context;

  YMTHomeAppBar(this.context);

  AppBar get appBar {
    final String blanks = '                                                                                                ';
    return AppBar(
      elevation: 0.0,
      leading: FlatButton(
        child: Image.asset(ic_home_white_classify),
        onPressed: () {},
      ),
      actions: <Widget>[
        Container(
          width: 60.0,
          height: 60.0,
          child: FlatButton(
            child: Image.asset(ic_home_white_msg),
            onPressed: () {},
          )
        )
      ],
      titleSpacing: 0.0,
      title: ActionChip(
        labelPadding: EdgeInsets.only(left: 0),
        label: Text(
          '苹果11' + blanks,
          style: light_grey_12,
        ),
        avatar: Image.asset(ic_home_search_grey, height: 16, width: 16,),
        onPressed: () {
          print('Search');
        },
      ),
    );
  }
}