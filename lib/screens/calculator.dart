import 'package:calculator/models/memory.dart';
import 'package:flutter/services.dart';

import '../components/keyboard.dart';
import 'package:flutter/material.dart';
import '../components/display.dart';

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();
  _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      home: Column(
        children: <Widget>[
          Display(memory.value),
          Keyboard(_onPressed),
        ],
      ),
    );
  }
}
