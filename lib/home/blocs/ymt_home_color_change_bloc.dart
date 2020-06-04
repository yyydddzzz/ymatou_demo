import 'package:bloc/bloc.dart';

class YMTHomeColorChangeBloc extends Bloc<int, int> {
  @override
  get initialState => 0xffff0000;

  @override
  Stream<int> mapEventToState(int event) async* {
    yield event; 
  }
}