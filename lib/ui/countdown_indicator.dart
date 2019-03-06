import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

/// A widget that displays time left using text in a circle,
/// the circle's edge also fills color depending on time left.
/// This is a wrapper to CircularPercentIndicator package.
class CountdownIndicator extends StatelessWidget {

  /// [timeLeft] is what gets displayed as text.
  /// Duration must be less than 1 hour.
  ///
  /// [percentage] is how much of the circle is filled.
  /// 1 is totally filled (time at 0)
  /// 0 is nothing filled (time at max)
  CountdownIndicator({@required this.timeLeft, @required this.percentage});

  final Duration timeLeft;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      percent: percentage,
      radius: 200,
      center: Text(
        "${timeLeft.inMinutes}:${timeLeft.inSeconds}",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      lineWidth: 10,
    );
  }
}
