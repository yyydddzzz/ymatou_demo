import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ymatou/home/blocs/ymt_home_color_change_bloc.dart';
import 'package:ymatou/home/widgets/ymt_home_banner.dart';

class YMTHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => YMTHomeColorChangeBloc(),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          YMTHomeBanner(),
        ]
      ),
    );
  }
}