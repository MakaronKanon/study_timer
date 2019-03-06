import 'package:flutter/material.dart';
import 'package:study_timer/ui/countdown_indicator.dart';

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
        Padding(padding: EdgeInsets.only(top:30),),
        CountdownIndicator(timeLeft:Duration(seconds: 15), percentage: 0.3),
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