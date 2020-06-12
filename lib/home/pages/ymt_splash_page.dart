import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ymatou/home/blocs/ymt_splash_bloc.dart';
import 'package:ymatou/home/models/ymt_ad_model.dart';
import 'dart:async';

class YMTSplashPage extends StatefulWidget {
  YMTSplashPage({Key key}) : super(key: key);

  @override
  _YMTSplashPageState createState() => _YMTSplashPageState();
}

class _YMTSplashPageState extends State<YMTSplashPage> {
  int _counter;
  Timer _timer;
  final StreamController<int> _counterCtl = StreamController<int>();
  

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _counterCtl.close();
    _timer.cancel();
    super.dispose();
  }
  
  void _countdown() {
    _timer = Timer.periodic(Duration(seconds: 1), (t) {
      if (_counter == -1) {
        t.cancel();
        Navigator.of(context).pushReplacementNamed('/init');
        return;
      }
      _counterCtl.sink.add(_counter--);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: BlocBuilder<YMTAdBloc, AdState>(
        builder: (context, data) {
          if (data is AdLoaded) {
            YMTAdModel adModel = data.adModel;
            AdItem adItem = adModel.adList.list[3];
            _counter = adModel.adList.interval;
            _countdown();
            return Stack(
              children: <Widget>[
                ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: Image.network(adItem.pic, fit: BoxFit.cover,),
                ),
                Positioned(
                  top: 30.0,
                  right: 16.0,
                  child: FlatButton(
                    color: Colors.grey[100],
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/init');
                    },
                    child: StreamBuilder(
                      stream: _counterCtl.stream ,
                      initialData: adModel.adList.interval ,
                      builder: (BuildContext context, AsyncSnapshot snapshot){
                        return Container(
                          child: Text('跳过 ${snapshot.data}'),
                        );
                      },
                    ),
                  )
                ),
              ],
            );
          }
          return Container();
        },
      ),
    );
  }
}