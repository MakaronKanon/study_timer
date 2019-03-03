import 'package:flutter/material.dart';
import 'countdown_circle.dart';
import 'countdown_text.dart';

class Countdown extends StatelessWidget {

  Countdown([this.timeLeft]);

  final Duration timeLeft;

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      CountdownCircle(),
      CountdownText(),
    ]);
  }

}