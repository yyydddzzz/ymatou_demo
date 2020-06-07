import 'package:equatable/equatable.dart';
import 'package:ymatou/home/models/ymt_home_data_model.dart';

abstract class YMTHomeDataState extends Equatable {
  const YMTHomeDataState();

  @override
  List<Object> get props => [];
}

class YMTHomeDataUninitialized extends YMTHomeDataState {}

class YMTHomeDataError extends YMTHomeDataState {}

class YMTHomeDataLoaded extends YMTHomeDataState {
  final YMTHomeDataModel mdoel;

  const YMTHomeDataLoaded({
    this.mdoel,
  });

  YMTHomeDataLoaded copyWith({YMTHomeDataModel mdoel}) {
    return YMTHomeDataLoaded(
      mdoel: mdoel ?? this.mdoel,
    );
  }
}
