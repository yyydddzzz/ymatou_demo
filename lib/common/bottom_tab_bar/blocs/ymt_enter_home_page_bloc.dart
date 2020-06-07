import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class YMTEnterHomePageBloc extends Bloc<int, int> {
  final BuildContext context;

  YMTEnterHomePageBloc({@required this.context});

  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(int event) async* {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.of(context).pushReplacementNamed('/init');
    });
    yield 0;
  }

}

