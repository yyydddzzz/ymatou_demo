import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'package:ymatou/common/bottom_tab_bar/blocs/ymt_tab_bar_bloc.dart';
import 'package:ymatou/common/ymt_images_animation.dart';
import 'package:ymatou/home/blocs/ymt_home_color_change_bloc.dart';
import 'package:ymatou/home/models/ymt_business_config_model.dart';
import 'package:ymatou/home/models/ymt_home_data_model.dart';
import 'package:ymatou/home/widgets/ymt_flash_sale_widget.dart';
import 'package:ymatou/home/widgets/ymt_home_app_bar.dart';

import 'package:ymatou/home/widgets/ymt_home_banner.dart';
import 'package:ymatou/home/widgets/ymt_home_benefits_widget.dart';
import 'package:ymatou/home/widgets/ymt_home_category_widget.dart';

import 'package:ymatou/common/ymt_asset_path.dart';
import 'package:ymatou/home/widgets/ymt_home_video_live_widget.dart';

import 'package:ymatou/home/repositories/ymt_home_repository.dart';

class YMTHomePage extends StatefulWidget {
  YMTHomePage({Key key}) : super(key: key);

  @override
  _YMTHomePageState createState() => _YMTHomePageState();
}

class _YMTHomePageState extends State<YMTHomePage> {
  StreamController<double> _appBarColorLerpCtl = StreamController<double>();
  Future<Map> _homeDataFuture;
  RefreshController _refreshController = RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    _appBarColorLerpCtl.sink.add(0);
    _homeDataFuture = YMTHomeRepository().fetchData();
  }

  @override
  void dispose() {
    _appBarColorLerpCtl.close();
    super.dispose();
  }

  void _onRefresh() async {
    await Future.delayed(Duration(milliseconds: 1500));
    setState(() {
      _homeDataFuture = YMTHomeRepository().fetchData();
    });
    // await Future.delayed(Duration(seconds: 2));
  }

  void _scrollViewDidScroll(double offset) {
    double opacity = offset / 70;
    double appBarColorLerp;
    if (opacity > 0) {
      appBarColorLerp = opacity > 1 ? 1 : opacity;
    } else {
      appBarColorLerp = 0;
    }
    _appBarColorLerpCtl.sink.add(appBarColorLerp);
  }

  Widget _newHoneyQualityWidget(String url) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
      child: Image.network(url),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => YMTHomeColorChangeBloc(color: '#ff0000'),
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            YMTHomeAppBar(appBarColorLerpCtl: _appBarColorLerpCtl),
            FutureBuilder(
              future: _homeDataFuture,
              builder: (BuildContext context, AsyncSnapshot snapShot) {
                _refreshController.refreshCompleted();
                if (snapShot.connectionState == ConnectionState.done) {
                  YMTHomeDataModel homeModel = snapShot.data['homeModel'];
                  YMTBusinessConfigModel businessConfigModel = snapShot.data['businessConfigModel'];
                  BannerList item = homeModel.banner.bannerList.first;
                  BlocProvider.of<YMTHomeColorChangeBloc>(context).add(item.backColor);
                  return Padding(
                    padding: EdgeInsets.only(top: 70),
                    child: NotificationListener(
                      onNotification: (ScrollNotification notification) {
                        if (notification is ScrollUpdateNotification && notification.depth == 0) {
                          _scrollViewDidScroll(notification.metrics.pixels);
                        }
                        return true;
                      },
                      child: RefreshConfiguration(
                        headerTriggerDistance: 70,
                        child: SmartRefresher(
                          onRefresh: _onRefresh,
                          header: CustomHeader(
                            height: 70,
                            builder: (context, mode) {
                              if (mode == RefreshStatus.refreshing) {
                                return ImagesAnimation(
                                  padding: EdgeInsets.only(top: 5, bottom: 5),
                                  w: null, 
                                  h: 60, 
                                  entry: ImagesAnimationEntry(0, 7, normal_refresh),
                                  durationSeconds: 2,
                                );
                              }
                              return Padding(padding: EdgeInsets.only(top:5, bottom: 5), child: Image.asset(normal_refresh0, height: 60, fit: BoxFit.fitHeight,));
                            },
                          ),
                          controller: _refreshController,
                          child: ListView(
                            physics: BouncingScrollPhysics(),
                            children: <Widget>[
                              YMTHomeBanner(bannerList: homeModel.banner.bannerList),
                              YMTHomeCategory(categoryList: homeModel.subChannel,),
                              _newHoneyQualityWidget(businessConfigModel.configs.newHoneyQualityUrl),
                              YMTHomeBenefitsWidget(newComer: homeModel.newComer),
                              Image.network(homeModel.advertisement.first.picUrl),
                              YMTFlashSaleWidget(flashSale: homeModel.flashSale,),
                              YMTHomeViewLiveWidget(videoLive: homeModel.videoLive,),
                            ]
                          ),
                        ),
                      ),
                    ),
                  );
                }
                return Container();
              }
            ),
          ],
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
}
