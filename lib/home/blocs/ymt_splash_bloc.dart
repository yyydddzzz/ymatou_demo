import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ymatou/home/repositories/ymt_ad_repository.dart';
import 'package:ymatou/home/models/ymt_ad_model.dart';

abstract class AdState {}

class AdEmpty extends AdState {}

class AdLoaded extends AdState {
  final YMTAdModel adModel;
  AdLoaded({this.adModel});
}

class AdError extends AdState {}

class YMTAdBloc extends Bloc<int, AdState> {
  @override
  AdState get initialState => AdEmpty();

  @override
  Stream<AdState> mapEventToState(event) async* {
    YMTAdModel model = await YMTAdRepository().fetchData();
    yield AdLoaded(adModel: model);
  }
}
