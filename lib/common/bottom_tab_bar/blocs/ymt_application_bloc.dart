import 'package:flutter_bloc/flutter_bloc.dart';

class YMTApplicationBloc extends Bloc<dynamic, dynamic> {
  @override
  get initialState => 0;

  @override
  Stream mapEventToState(event) async* {
    yield 0;
  }
}