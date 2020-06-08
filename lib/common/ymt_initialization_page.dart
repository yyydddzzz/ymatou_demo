import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ymatou/common/bottom_tab_bar/blocs/ymt_application_bloc.dart';

import 'package:ymatou/common/bottom_tab_bar/blocs/ymt_enter_home_page_bloc.dart';
import 'package:ymatou/home/models/ymt_ad_model.dart';

class YMTInitializationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => YMTEnterHomePageBloc(context: context),
      child: Scaffold( 
        body: BlocBuilder<YMTAdBloc, AdState>(
          builder: (context, data) {
            if (data is AdLoaded) {
              YMTAdModel adModel = data.adModel;
              return Stack(
                children: <Widget>[
                  PageView.builder(
                    itemCount: adModel.adList.list.length,
                    itemBuilder: (context, index) {
                      AdItem adItem = adModel.adList.list[index];
                      return Image.network(
                        adItem.pic,
                        fit: BoxFit.fill,
                      );
                    }
                  ),
                  Positioned(
                    top: 30.0,
                    right: 30.0,
                    child: FlatButton(
                      onPressed: () {
                        BlocProvider.of<YMTEnterHomePageBloc>(context).add(0);
                      },
                      child: Text('进入首页'),
                    )
                  ),
                ],
              );
            }
            return Center(
              child: FlatButton(
                onPressed: () {
                  BlocProvider.of<YMTEnterHomePageBloc>(context).add(0);
                },
                child: Text('进入首页'),
              )
            );
          },
        ),
      ),
    );
  }
}