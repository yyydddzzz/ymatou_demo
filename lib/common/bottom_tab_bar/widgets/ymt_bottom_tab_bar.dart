import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ymatou/common/bottom_tab_bar/blocs/ymt_tab_bar_bloc.dart';

import 'package:ymatou/home/pages/ymt_home_page.dart';
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
    // Future.delayed(Duration(milliseconds: 100)).then((value) {
    //   Overlay.of(context).insert(_overlay);
    // });
  }

  @override
  void dispose() {
    // _overlay.remove();
    super.dispose();
  }

  final List _pages = [
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
      ],
      child: BlocBuilder<YMTTabBarBloc, int>(
        builder: (context, index) => _pages[index],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}