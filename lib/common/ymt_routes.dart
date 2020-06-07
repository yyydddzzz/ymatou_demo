import 'package:flutter/material.dart';
import 'package:ymatou/cart/pages/ymt_cart_page.dart';
import 'package:ymatou/common/bottom_tab_bar/widgets/ymt_bottom_tab_bar.dart';
import 'package:ymatou/home/pages/ymt_home_page.dart';
import 'package:ymatou/htq/pages/ymt_htq_page.dart';
import 'package:ymatou/live/pages/ymt_live_page.dart';
import 'package:ymatou/my/pages/ymt_my_page.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/init': (context) => YMTBottomTabBar(),
  '/home': (context) => YMTHomePage(),
  '/htq': (context) => YMTHtqPage(),
  '/live': (context) => YMTLivePage(),
  '/my': (context) => YMTMyPage(),
  '/cart': (context) => YMTCartPage(),
};