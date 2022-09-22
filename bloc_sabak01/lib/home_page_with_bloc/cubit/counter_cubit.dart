import 'package:bloc/bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(7);

  // final int count = 0;

  void koshuu() {
    emit(state + 1);
    // state+1;
    // log(state.toString());
  }

  void kemituu() {
    emit(state - 1);
    // state+1;
    // log(state.toString());
  }
}
