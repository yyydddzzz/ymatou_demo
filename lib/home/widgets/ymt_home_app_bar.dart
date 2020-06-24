import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ymatou/common/ymt_hex_color.dart';
import 'package:ymatou/common/ymt_text_style.dart';
import 'package:ymatou/common/ymt_asset_path.dart';
import 'package:flutter/material.dart';
import 'package:ymatou/home/pages/ymt_home_search_page.dart';
import 'package:ymatou/home/blocs/ymt_home_color_change_bloc.dart';

class YMTHomeAppBar extends StatefulWidget {
  final StreamController appBarColorLerpCtl;

  YMTHomeAppBar({@required this.appBarColorLerpCtl});

  @override
  _YMTHomeAppBarState createState() => _YMTHomeAppBarState();
}

class _YMTHomeAppBarState extends State<YMTHomeAppBar> {
  final String _blanks = '                                                                                                ';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: BlocBuilder<YMTHomeColorChangeBloc, String>(
        builder: (context, color) {
          return StreamBuilder(
            stream: widget.appBarColorLerpCtl.stream,
            builder: (BuildContext context, AsyncSnapshot snapshot){
              return Container(
                child: AppBar(
                  backgroundColor: Color.lerp(ColorsUtil.hexToColor(color), Colors.white, snapshot.data),
                  elevation: 0.0,
                  leading: FlatButton(
                    child: Image.asset(ic_home_white_classify, color: Color.lerp(Colors.white, Colors.black, snapshot.data)),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/home/login');
                    },
                  ),
                  actions: <Widget>[
                    Container(
                      width: 60.0,
                      height: 60.0,
                      child: FlatButton(
                        child: Image.asset(ic_home_white_msg, color: Color.lerp(Colors.white, Colors.black, snapshot.data)),
                        onPressed: () {

                        },
                      )
                    )
                  ],
                  titleSpacing: 0.0,
                  title: ActionChip(
                    labelPadding: EdgeInsets.only(left: 0),
                    label: Text(
                      '苹果11' + _blanks,
                      style: light_grey_12,
                    ),
                    avatar: Image.asset(ic_home_search_grey, height: 16, width: 16),
                    onPressed: () {
                      showSearch(context: context, delegate: YMTSeachBarDelegate(searchFieldLabel: '香奈儿coco口红'));
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}