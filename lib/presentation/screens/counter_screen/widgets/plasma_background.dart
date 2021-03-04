import 'package:bloc_architecture_app/presentation/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class PlasmaBackground extends StatelessWidget {
  const PlasmaBackground({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        backgroundBlendMode: BlendMode.srcOver,
      ),
      child: PlasmaRenderer(
        particles: 5,
        color: Theme.of(context).particlesColor,
        blur: 0.51,
        size: 0.39,
        speed: 0.39,
        blendMode: BlendMode.plus,
      ),
    );
  }
}
