import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sprints_state_management_task_2/cubits/counter_cubit.dart';

class HomeFloatingButtons extends StatelessWidget {
  const HomeFloatingButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () => context.read<CounterCubit>().increment(),
          child: const Icon(Icons.add),
        ),
        const SizedBox(height: 10),
        FloatingActionButton(
          onPressed: () => context.read<CounterCubit>().decrement(),
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}
