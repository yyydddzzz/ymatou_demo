import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

class YMTTabBarState {
  final bool removeOverlay;
  final int pageIndex;

  YMTTabBarState(this.removeOverlay, this.pageIndex);
  
  // YMTTabBarState.;
}

class YMTTabBarBloc extends Bloc<int, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(int event) async* {
    yield event;
  }
}