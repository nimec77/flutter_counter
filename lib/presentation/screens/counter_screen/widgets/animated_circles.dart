import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class AnimatedCircles extends StatelessWidget {
  const AnimatedCircles({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 300,
      child: FlareActor(
        'assets/flares/circle.flr',
        animation: 'Alarm',
        color: Theme.of(context).accentColor,
      ),
    );
  }
}
