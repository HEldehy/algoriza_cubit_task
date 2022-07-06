import 'package:algoriza_cubit_task/features/counter/presentation/cubit/cubit.dart';
import 'package:algoriza_cubit_task/features/counter/presentation/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterWidgets extends StatelessWidget {
  const CounterWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterState>(
        listener: (context, state) {
          if (state is CounterInitialState) {
            debugPrint('CounterInitialState');
            debugPrint('${BlocProvider.of<CounterCubit>(context).counter}');
          }
          if (state is CounterMinusState) {
            debugPrint('CounterMinusState');
            debugPrint('${BlocProvider.of<CounterCubit>(context).counter}');
          }
          if (state is CounterPlusState) {
            debugPrint('CounterPlusState');
            debugPrint('${BlocProvider.of<CounterCubit>(context).counter}');
          }
        },
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      CounterCubit.get(context).minus();
                    },
                    child: const Icon(Icons.minimize),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('${CounterCubit.get(context).counter}'),
                  const SizedBox(
                    width: 10,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      CounterCubit.get(context).plus();
                    },
                    child: const Icon(Icons.add),
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
