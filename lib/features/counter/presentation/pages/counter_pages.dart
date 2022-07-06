import 'package:algoriza_cubit_task/features/counter/presentation/widgets/counter_widget.dart';
import 'package:flutter/material.dart';
class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const CounterWidgets()
    );
  }
}
