import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ymatou/common/bottom_tab_bar/blocs/ymt_splash_bloc.dart';
import 'package:ymatou/home/models/ymt_ad_model.dart';

class YMTSplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: BlocBuilder<YMTAdBloc, AdState>(
        builder: (context, data) {
          if (data is AdLoaded) {
            YMTAdModel adModel = data.adModel;
            AdItem adItem = adModel.adList.list[3];
            return Stack(
              children: <Widget>[
                Image.network(adItem.pic, fit: BoxFit.cover,),
                Positioned(
                  top: 30.0,
                  right: 16.0,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/init');
                    },
                    child: Text('跳过 5'),
                  )
                ),
              ],
            );
          }
          return Center(
            child: FlatButton(
              onPressed: () {
                print('object');
                Navigator.of(context).pushReplacementNamed('/init');
              },
              child: Text('进入首页'),
            )
          );
        },
      ),
    );
  }
}