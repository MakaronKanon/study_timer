import 'package:flutter/material.dart';
import 'package:study_timer/ui/countdown.dart';

class Home extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Study Timer"),),
        body: body());
  }

  Widget body()
  {
    return Column(
      children: <Widget>[
        Countdown(),
        Row(
          children: <Widget>[
            IconButton(icon: Icon(Icons.radio_button_unchecked),),
            IconButton(icon: Icon(Icons.radio_button_unchecked),)
          ],
        )
      ],
    );
  }

}