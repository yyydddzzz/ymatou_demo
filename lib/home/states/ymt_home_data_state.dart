import 'package:equatable/equatable.dart';
import 'package:ymatou/home/models/ymt_home_data_model.dart';

abstract class YMTHomeDataState extends Equatable {
  const YMTHomeDataState();

  @override
  List<Object> get props => [];
}

class YMTHomeDataEmpty extends YMTHomeDataState {}

class YMTHomeDataError extends YMTHomeDataState {}

class YMTHomeDataLoaded extends YMTHomeDataState {
  final YMTHomeDataModel model;

  const YMTHomeDataLoaded({
    this.model,
  });

  YMTHomeDataLoaded copyWith({YMTHomeDataModel model}) {
    return YMTHomeDataLoaded(
      model: model ?? this.model,
    );
  }
}
