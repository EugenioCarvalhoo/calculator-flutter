import 'package:flutter/material.dart';
import 'button_row.dart';
import 'button.dart';

class Keyboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: <Widget>[
          ButtonRow([
            Button.big(text: 'AC', big: true),
            Button(text: '%'),
            Button.opration(text: '/'),
          ]),
          ButtonRow([
            Button(text: '7'),
            Button(text: '8'),
            Button(text: '9'),
            Button.opration(text: 'x'),
          ]),
          ButtonRow([
            Button(text: '4'),
            Button(text: '5'),
            Button(text: '6'),
            Button.opration(text: '-'),
          ]),
          ButtonRow([
            Button(text: '1'),
            Button(text: '2'),
            Button(text: '3'),
            Button.opration(text: '+'),
          ]),
          ButtonRow([
            Button.big(
              text: '0',
            ),
            Button(text: '.'),
            Button.opration(text: '='),
          ]),
        ],
      ),
    );
  }
}
