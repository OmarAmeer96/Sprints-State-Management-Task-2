import 'package:flutter/material.dart';
import 'package:sprints_state_management_task_2/widgets/counter_bloc_consumer.dart';
import 'package:sprints_state_management_task_2/widgets/counter_bloc_listener_and_builder.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    super.key,
    required this.isBlocConsumer,
  });

  final bool isBlocConsumer;

  @override
  Widget build(BuildContext context) {
    return isBlocConsumer
        ? const CounterBlocConsumer()
        : const CounterBlocListenerAndBuilder();
  }
}
