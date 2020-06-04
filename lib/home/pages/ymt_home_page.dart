import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ymatou/common/bottom_tab_bar/blocs/ymt_tab_bar_bloc.dart';
import 'package:ymatou/home/blocs/ymt_home_color_change_bloc.dart';

import 'package:ymatou/home/widgets/ymt_home_banner.dart';
import 'package:ymatou/home/widgets/ymt_home_category_widget.dart';

import 'package:ymatou/common/ymt_asset_path.dart';
import 'package:ymatou/common/ymt_text_style.dart';

class YMTHomePage extends StatelessWidget {
  final String _blanks = '                                                                                                ';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => YMTHomeColorChangeBloc(),
      child: BlocBuilder<YMTHomeColorChangeBloc, int>(
        builder: (context, color) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Color(color),
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
                  '苹果11' + _blanks,
                  style: light_grey_12,
                ),
                avatar: Image.asset(ic_home_search_grey, height: 16, width: 16,),
                onPressed: () {
                  print('Search');
                },
              ),
            ),
            body: ListView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                YMTHomeBanner(),
                YMTHomeCategory(),
              ]
            ),
            bottomNavigationBar: BlocBuilder<YMTTabBarBloc, int>(
              builder: (context, index) {
                return BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  currentIndex: index,
                  onTap: (int index) {
                    BlocProvider.of<YMTTabBarBloc>(context).add(index);
                  },
                  items: [
                    BottomNavigationBarItem(
                      title: Container(),
                      icon: Image.asset(icon_tab_home),
                      activeIcon: Image.asset(icon_tab_home_sel),
                    ),
                    BottomNavigationBarItem(
                      title: Container(),
                      icon: Image.asset(icon_tab_live),
                      activeIcon: Image.asset(icon_tab_live_sel),
                    ),
                    BottomNavigationBarItem(
                      title: Container(),
                      icon: Image.asset(icon_tab_htq),
                      activeIcon: Image.asset(icon_tab_htq_sel),
                    ),
                    BottomNavigationBarItem(
                      title: Container(),
                      icon: Image.asset(icon_tab_cart),
                      activeIcon: Image.asset(icon_tab_cart_sel),
                    ),
                    BottomNavigationBarItem(
                      title: Container(),
                      icon: Image.asset(icon_tab_mine),
                      activeIcon: Image.asset(icon_tab_mine_sel),
                    ),
                  ],
                );
              }
            )
          );
        },
      ),
    );
  }
}