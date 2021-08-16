import 'package:flutter/material.dart';
import 'package:calculator/controller.dart';
import 'package:calculator/components/header.dart';
import 'package:calculator/components/viewer.dart';
import 'package:calculator/components/keyboard.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Controller calculate = Controller();
  static const operations = const [
    '%',
    '÷',
    'x',
    '-',
    '+',
  ];
  String _currentOperation = '';

  _onPressed(String keyPressed) {
    setState(() {
      if (operations.contains(keyPressed)) {
        _currentOperation = keyPressed;
      } else if (keyPressed == '=' || keyPressed == 'AC') {
        _currentOperation = "";
      }

      calculate.applyCommand(keyPressed);
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      debugShowCheckedModeBanner: false,
      home: Column(
        children: <Widget>[
          Header(operation: _currentOperation),
          Viewer(
            value: calculate.value,
          ),
          Expanded(child: Keyboard(_onPressed)),
        ],
      ),
    );
  }
}
