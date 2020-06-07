import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class YMTHomeColorChangeBloc extends Bloc<int, int> {
  final int color;

  YMTHomeColorChangeBloc({@required this.color});

  @override
  get initialState => color;

  @override
  Stream<int> mapEventToState(int event) async* {
    yield event; 
  }
}