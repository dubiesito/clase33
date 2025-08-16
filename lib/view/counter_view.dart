import 'package:flutter/material.dart';
import '../view_model/counter_viewmodel.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  final CounterViewModel counterVM = CounterViewModel();

  void _increment() {
    setState(() {
      counterVM.increment();
    });
  }

  void _decrement() {
    setState(() {
      counterVM.decrement();
    });
  }

  void _reset() {
    setState(() {
      counterVM.reset();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador con Reset (MVVM sin provider)'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Valor del contador:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '${counterVM.value}',
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _decrement,
                  child: const Text('-1'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _reset,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: const Text('Reset'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _increment,
                  child: const Text('+1'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
