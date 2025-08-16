import 'package:flutter/material.dart';
import 'view/counter_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter MVVM',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const CounterView(),
    );
  }
}
