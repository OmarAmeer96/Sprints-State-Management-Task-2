import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sprints_state_management_task_2/cubits/counter_cubit.dart';

class CounterBlocConsumer extends StatefulWidget {
  const CounterBlocConsumer({
    super.key,
  });

  @override
  State<CounterBlocConsumer> createState() => _CounterBlocConsumerState();
}

class _CounterBlocConsumerState extends State<CounterBlocConsumer> {
  int previousState = 0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, int>(
      listener: (context, state) {
        if (state == 10 || state == -10) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Counter reached $state! [BlocConsumer]'),
            ),
          );
        }

        // Show warning dialog only when switching from 0 to -1
        if (state == -1 && previousState == 0) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Warning'),
              content: const Text('Counter is negative! [BlocConsumer]'),
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
      builder: (context, state) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '[BlocConsumer]\nYou have pushed the button this many times:',
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
    );
  }
}
