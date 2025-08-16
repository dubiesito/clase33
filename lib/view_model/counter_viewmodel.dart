import '../model/counter_model.dart';

class CounterViewModel {
  final CounterModel _counter = CounterModel();

  int get value => _counter.value;

  void increment() {
    _counter.value++;
  }

  void decrement() {
    _counter.value--;
  }

  void reset() {
    _counter.value = 0;
  }
}
