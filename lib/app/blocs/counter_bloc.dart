import 'package:counter_bloc/app/model/model_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Cubit<Counter> {
  CounterBloc() : super(Counter(count: 0));

  void increment() {
    emit(state.copyWith(count: state.count + 1));
  }

  void decrement() {
    emit(state.copyWith(count: state.count - 1));
  }
}
