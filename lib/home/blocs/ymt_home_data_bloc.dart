import 'package:bloc/bloc.dart';
import 'package:ymatou/home/models/ymt_home_data_model.dart';
import 'package:ymatou/home/repositories/ymt_home_repository.dart';
import 'package:ymatou/home/states/ymt_home_data_state.dart';

class YMTHomeDataBloc extends Bloc<int, YMTHomeDataState> {
  @override
  YMTHomeDataState get initialState => YMTHomeDataEmpty();

  @override
  Stream<YMTHomeDataState> mapEventToState(int event) async* {
    YMTHomeDataModel model = await YMTHomeRepository().fetchData();
    yield YMTHomeDataLoaded(model: model);
  }
}