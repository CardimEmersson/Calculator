import 'package:flutter/material.dart';

class OperationKey extends StatelessWidget {
  final String value;
  final int flex;
  final bool isCircle;
  final void Function(String) onPressedOperationKey;

  OperationKey({@required this.value, this.flex = 1, this.isCircle = false, this.onPressedOperationKey});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: this.flex,
      child: Container(
        margin: EdgeInsets.all(15),
        child: ElevatedButton(
          style: this.isCircle
              ? ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  primary: Color.fromRGBO(3, 240, 252, 1),
                )
              : ElevatedButton.styleFrom(primary: Colors.white, shadowColor: Colors.transparent),
          child: Text(value, style: TextStyle(color: isCircle ? Colors.black : Colors.grey, fontSize: 30, fontWeight: FontWeight.bold)),
          onPressed: () => onPressedOperationKey(value),
        ),
      ),
    );
  }
}
