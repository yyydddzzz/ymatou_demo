import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ymatou/common/ymt_asset_path.dart';

import 'package:ymatou/common/bottom_tab_bar/blocs/ymt_tab_bar_bloc.dart';
import 'package:ymatou/home/blocs/ymt_home_color_change_bloc.dart';

import 'package:ymatou/home/pages/ymt_home_page.dart';
import 'package:ymatou/home/widgets/ymt_home_app_bar.dart';
import 'package:ymatou/htq/pages/ymt_htq_page.dart';
import 'package:ymatou/live/pages/ymt_live_page.dart';
import 'package:ymatou/cart/pages/ymt_cart_page.dart';
import 'package:ymatou/my/pages/ymt_my_page.dart';

class YMTBottomTabBar extends StatefulWidget {
  YMTBottomTabBar({Key key}) : super(key: key);

  @override
  _YMTBottomTabBarState createState() => _YMTBottomTabBarState();
}

class _YMTBottomTabBarState extends State<YMTBottomTabBar> with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    print('YMTHomePage');
    Future.delayed(Duration(milliseconds: 300)).then((value) {
      Overlay.of(context).insert(_overlay);
    });
  }

  @override
  void dispose() {
    _overlay.remove();
    super.dispose();
  }

  final List pages = [
    YMTHomePage(),
    YMTLivePage(),
    YMTHtqPage(),
    YMTCartPage(),
    YMTMyPage()
  ];

  final OverlayEntry _overlay = OverlayEntry(
    builder: (context) => Positioned(
      top: MediaQuery.of(context).size.height * 0.8,
      right: 16.0,
      child: GestureDetector(
        onTap: () { print('GestureDetector'); },
        child: Container(
          width: 60.0,
          height: 60.0,
          child: Image.network('http://pic1.ymatou.com/G02/M04/6E/1B/CgzUCl1KhiSAev0sAAB0GUKEWxw572.png', fit: BoxFit.cover,)
        ),
      )
    )
  );

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider<YMTTabBarBloc>(
          create: (BuildContext context) => YMTTabBarBloc(),
        ),
        BlocProvider<YMTHomeColorChangeBloc>(
          create: (BuildContext context) => YMTHomeColorChangeBloc(),
        ),
      ],
      child: Scaffold(
        appBar: YMTHomeAppBar(context).appBar,
        body: BlocBuilder<YMTTabBarBloc, int>(
          builder: (context, index) {
            return pages[index];
          },
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
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}