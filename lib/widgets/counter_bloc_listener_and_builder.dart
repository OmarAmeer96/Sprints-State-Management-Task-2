import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sprints_state_management_task_2/cubits/counter_cubit.dart';

class CounterBlocListenerAndBuilder extends StatefulWidget {
  const CounterBlocListenerAndBuilder({
    super.key,
  });

  @override
  State<CounterBlocListenerAndBuilder> createState() =>
      _CounterBlocListenerAndBuilderState();
}

class _CounterBlocListenerAndBuilderState
    extends State<CounterBlocListenerAndBuilder> {
  int previousState = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlocListener<CounterCubit, int>(
          listener: (context, state) {
            if (state == 10 || state == -10) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Counter reached $state! [BlocListener]'),
                ),
              );
            }

            // Show warning dialog only when switching from 0 to -1
            if (state == -1 && previousState == 0) {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Warning'),
                  content: const Text('Counter is negative!\n[BlocListener]'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              );
            }
            previousState = state;
          },
          child: Container(),
        ),
        BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '[BlocListener]\nYou have pushed the button this many times:',
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '$state',
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
