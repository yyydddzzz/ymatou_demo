import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ymatou/common/bottom_tab_bar/blocs/ymt_application_bloc.dart';
import 'package:ymatou/common/bottom_tab_bar/blocs/ymt_enter_home_page_bloc.dart';

import 'package:ymatou/common/ymt_device_info.dart';
import 'package:ymatou/common/ymt_initialization_page.dart';
import 'package:ymatou/common/ymt_routes.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => YMTInitBloc(),
        ),
        BlocProvider(
          create: (context) => YMTAdBloc(),
        )
      ],
      child: MyApp(),
    )
  );
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    // BlocProvider.of<YMTAdBloc>(context).add(0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        buttonTheme: ButtonThemeData(
          minWidth: 0,
          padding: EdgeInsets.only(left: 12, top: 0, right: 12, bottom: 0),
        ),
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: routes,
      home: YMTInitializationPage(),
    );
  }
}