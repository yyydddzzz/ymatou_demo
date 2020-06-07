import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ymatou/home/repositories/ymt_ad_data_repository.dart';
import 'package:ymatou/home/models/ymt_ad_model.dart';

abstract class AdState {}

class AdEmpty extends AdState {}

class AdLoading extends AdState {}

class AdLoaded extends AdState {
  final YMTAdModel adModel;

  AdLoaded({@required this.adModel});
}

class AdError extends AdState {}

class YMTAdBloc extends Bloc<int, AdState> {
  @override
  get initialState => AdEmpty();

  @override
  Stream<AdState> mapEventToState(event) async* {
    YMTAdModel adModel = await YMTAdDataRepository().fetchData();
    yield AdLoaded(adModel: adModel);
  }
}

class YMTInitBloc extends Bloc<int, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(int event) async* {
    yield 0;
  }
}