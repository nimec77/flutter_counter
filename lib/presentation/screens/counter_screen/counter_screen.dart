import 'package:bloc_architecture_app/presentation/screens/counter_screen/widgets/counter_slider.dart';
import 'package:flutter/material.dart';

import 'widgets/plasma_background.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: const [
          PlasmaBackground(),
          Positioned(bottom: 48, child: CounterSlider()),
        ],
      ),
    );
  }
}
