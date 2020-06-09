import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ymatou/common/bottom_tab_bar/blocs/ymt_splash_bloc.dart';
import 'package:ymatou/common/ymt_bloc_delegate.dart';

import 'package:ymatou/common/ymt_device_info.dart';
import 'package:ymatou/common/ymt_splash_page.dart';
import 'package:ymatou/common/ymt_routes.dart';

void main() async {
  BlocSupervisor.delegate = YMTBlocDelegate();
  WidgetsFlutterBinding.ensureInitialized();
  await YMTDeviceInfo().initPlatformState();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => YMTAdBloc(),
        )
      ],
      child: YMTApp(),
    )
  );
}

class YMTApp extends StatefulWidget {
  YMTApp({Key key}) : super(key: key);

  @override
  _YMTAppState createState() => _YMTAppState();
}

class _YMTAppState extends State<YMTApp> {

  @override
  void initState() {
    super.initState();
    BlocProvider.of<YMTAdBloc>(context).add(0);
    print(YMTDeviceInfo.deviceData['model']);
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
      home: YMTSplashPage(),
    );
  }
}