import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

class YMTTabBarBloc extends Bloc<int, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(int event) async* {
    yield event;
  }
}