import 'package:flutter/material.dart';
import '../widgets/home_floating_buttons.dart';
import '../widgets/counter_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildHomeAppBar(),
      body: const CounterWidget(
        isBlocConsumer: false,
      ),
      floatingActionButton: HomeFloatingButtons(),
    );
  }

  AppBar buildHomeAppBar() {
    return AppBar(
      title: const Text(
        'Cubit Counter App',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
    );
  }
}
