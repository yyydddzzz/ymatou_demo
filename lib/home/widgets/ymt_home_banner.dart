import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:ymatou/home/widgets/ymt_home_hot_search_widget.dart';
import 'package:ymatou/home/blocs/ymt_home_color_change_bloc.dart';

class YMTHomeBanner extends StatelessWidget {
  final List<int> _colors = [
    0xff7b1e01,
    0xff5d0311,
    0xffd35f11,
    0xffc6762b,
    0xffc61931,
    0xff422e28,
    0xffa52300,
    0xff7d3cae,
  ];
  final List<String> _bannerPic = <String>[
    'http://pic1.ymatou.com/G03/M06/3A/9D/CgzUIV7WckGAByltAASJlXLQfHw226_375_128_w_b.png',
    'http://pic1.ymatou.com/G03/M07/3A/56/CgzUH17Wap-Af-VHAACVgabvAw4066_375_128_w_b.jpg',
    'http://pic1.ymatou.com/G03/M06/34/A8/CgzUIV7WGjSAHb4BAAGMNHxOwfU676_375_128_w_b.jpg',
    'http://pic1.ymatou.com/G03/M09/31/E5/CgzUIF7WAqKAcSiaAAGlQZf4vDY540_375_128_w_b.jpg',
    'http://pic1.ymatou.com/G03/M05/39/5A/CgzUIV7WX9iAX93YAADBI_T85fo952_375_128_w_b.png',
    'http://pic1.ymatou.com/G03/M01/38/62/CgzUH17WTAWAeynaAAES9_OzGAw327_375_128_w_b.jpg',
    'http://pic1.ymatou.com/G03/M01/31/A8/CgzUIF7WAAOATi1rAAE0sm4AXBU105_375_128_w_b.jpg',
    'http://pic1.ymatou.com/G03/M03/42/67/CgzUH17XFPGAWW1wAADUE0S-hcA819_375_128_w_b.png',
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<YMTHomeColorChangeBloc, int>(
      builder: (context, color) {
        return Container(
          height: 160,
          child: Stack(
            children: <Widget>[
              Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Color(color),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))
                ),
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
                    itemCount: _bannerPic.length,
                    itemBuilder: (context, index) {
                      return Image.network(
                        _bannerPic[index],
                        fit: BoxFit.fill,
                      );
                    },
                    onIndexChanged: (index) {
                      BlocProvider.of<YMTHomeColorChangeBloc>(context).add(_colors[index]);
                    },
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}