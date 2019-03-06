import 'package:flutter/material.dart';
import 'countdown_circle.dart';
import 'countdown_text.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

/// A widget that displays time left using text in a circle,
/// the circle's edge also fills color depending on time left.
class Countdown extends StatelessWidget {

  Countdown([this.timeLeft]);

  final Duration timeLeft;

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(percent: .3, radius: 200, center: Text("$timeLeft", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),), lineWidth: 10,);

//    return Stack(children: <Widget>[
//      CountdownCircle(),
//      CountdownText(),
//    ],
//    alignment: Alignment.center,);
  }

}