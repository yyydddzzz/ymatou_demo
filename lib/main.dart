import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ymatou/common/bottom_tab_bar/blocs/ymt_application_bloc.dart';
import 'package:ymatou/common/bottom_tab_bar/ui/ymt_bottom_tab_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => YMTApplicationBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          buttonTheme: ButtonThemeData(
            minWidth: 0,
            padding: EdgeInsets.only(left: 12, top: 0, right: 12, bottom: 0),
          ),
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: YMTBottomTabBar(),
      ),
    );
  }
}
