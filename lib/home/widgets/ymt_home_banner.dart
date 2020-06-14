import 'package:flutter/material.dart';
import 'package:cache_image/cache_image.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:ymatou/home/models/ymt_home_data_model.dart';
import 'package:ymatou/home/widgets/ymt_home_hot_search_widget.dart';
import 'package:ymatou/home/widgets/ymt_arc_paint_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ymatou/home/blocs/ymt_home_color_change_bloc.dart';

class YMTHomeBanner extends StatelessWidget {
  final List<BannerList> bannerList;

  YMTHomeBanner({@required this.bannerList});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 6),
      height: 160,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 100,
            child: YMTArcPaintWidget(),
          ),
          YMTHomeHotSearchView(),
          Positioned(
            top: 30.0,
            left: 15.0,
            child: Container(
              width: MediaQuery.of(context).size.width - 30,
              height: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              clipBehavior: Clip.hardEdge,
              child: Swiper(
                autoplay: true,
                itemCount: bannerList.length,
                itemBuilder: (context, index) {
                  BannerList item = bannerList[index];
                  return Image.network(
                    item.pic,
                    fit: BoxFit.fill,
                  );
                },
                onIndexChanged: (index) {
                  BannerList item = bannerList[index];
                  BlocProvider.of<YMTHomeColorChangeBloc>(context).add(item.backColor);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}