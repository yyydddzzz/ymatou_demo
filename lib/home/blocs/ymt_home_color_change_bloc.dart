import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class YMTHomeColorChangeBloc extends Bloc<String, String> {
  final String color;

  YMTHomeColorChangeBloc({@required this.color});

  @override
  String get initialState => color;

  @override
  Stream<String> mapEventToState(String event) async* {
    yield event; 
  }
}