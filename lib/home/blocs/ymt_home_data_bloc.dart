import 'package:bloc/bloc.dart';
import 'package:ymatou/home/events/ymt_home_data_event.dart';
import 'package:ymatou/home/states/ymt_home_data_state.dart';

class YMTHomeDataBloc extends Bloc<YMTHomeDataEvent, YMTHomeDataState> {
  @override
  YMTHomeDataState get initialState => YMTHomeDataUninitialized();

  @override
  Stream<YMTHomeDataState> mapEventToState(YMTHomeDataEvent event) async* {
    yield YMTHomeDataUninitialized();
  }
  
}