import 'package:flutter/material.dart';

int height = 3;

class Sliders extends StatefulWidget {
  @override
  _SlidersState createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Current status of Health',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              height.toString(),
            ),
            Text(
              'cm',
            )
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            inactiveTrackColor: Color(0xFF8D8E98),
            activeTrackColor: Colors.white,
            thumbColor: Color(0xFFEB1555),
            overlayColor: Color(0x29EB1555),
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
          ),
          child: Slider(
            value: height.toDouble(),
            min: 0,
            max: 5,
            onChanged: (double newValue) {
              setState(() {
                height = newValue.round();
              });
            },
          ),
        ),
      ],
    ));
  }
}
