import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ymatou/common/ymt_hex_color.dart';

import 'package:ymatou/common/bottom_tab_bar/blocs/ymt_tab_bar_bloc.dart';
import 'package:ymatou/home/blocs/ymt_home_color_change_bloc.dart';
import 'package:ymatou/home/blocs/ymt_home_data_bloc.dart';
import 'package:ymatou/home/models/ymt_home_data_model.dart';
import 'package:ymatou/home/states/ymt_home_data_state.dart';

import 'package:ymatou/home/widgets/ymt_home_banner.dart';
import 'package:ymatou/home/widgets/ymt_home_benefits_widget.dart';
import 'package:ymatou/home/widgets/ymt_home_category_widget.dart';

import 'package:ymatou/common/ymt_asset_path.dart';
import 'package:ymatou/common/ymt_text_style.dart';

class YMTHomePage extends StatefulWidget {
  YMTHomePage({Key key}) : super(key: key);

  @override
  _YMTHomePageState createState() => _YMTHomePageState();
}

class _YMTHomePageState extends State<YMTHomePage> {
  final String _blanks = '                                                                                                ';

  @override
  void initState() {
    super.initState();
    BlocProvider.of<YMTHomeDataBloc>(context).add(0);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<YMTHomeDataBloc, YMTHomeDataState>(
      builder: (context, homeData) {
        if (homeData is YMTHomeDataLoaded) {
          YMTHomeDataModel homeModel = homeData.model;
          BannerList item = homeModel.banner.bannerList.first;
          return BlocProvider(
            create: (context) => YMTHomeColorChangeBloc(color: item.backColor),
            child: BlocBuilder<YMTHomeColorChangeBloc, String>(
              builder: (context, color) {
                return Scaffold(
                  appBar: AppBar(
                    backgroundColor: HexColor.fromHex(color),
                    elevation: 0.0,
                    leading: FlatButton(
                      child: Image.asset(ic_home_white_classify),
                      onPressed: () {
                        
                      },
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
                      YMTHomeBanner(bannerList: homeModel.banner.bannerList),
                      YMTHomeCategory(),
                      YMTHomeBenefitsWidget(),
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
        return Scaffold();
      },
    );
  }
}