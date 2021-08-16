import 'package:flutter/material.dart';

class NumberKey extends StatelessWidget {
  final String value;
  final int flex;
  final void Function(String) onPressedNumberKey;

  NumberKey({@required this.value, this.flex = 1, this.onPressedNumberKey});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: this.flex,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.white, shadowColor: Colors.transparent),
        child: Text(value, style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
        onPressed: () => onPressedNumberKey(value),
      ),
    );
  }
}
