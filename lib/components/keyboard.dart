import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calculator/components/numberKey.dart';
import 'package:calculator/components/flexDisplay.dart';
import 'package:calculator/components/operationKey.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) onPressedKey;

  Keyboard(this.onPressedKey);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        color: Colors.white,
        child: Column(children: <Widget>[
          FlexDisplay(keys: [
            OperationKey(
              value: 'AC',
              flex: 2,
              onPressedOperationKey: onPressedKey,
            ),
            OperationKey(
              value: '%',
              onPressedOperationKey: onPressedKey,
            ),
            OperationKey(
              value: '÷',
              isCircle: true,
              onPressedOperationKey: onPressedKey,
            )
          ]),
          FlexDisplay(keys: [
            NumberKey(
              value: '7',
              onPressedNumberKey: onPressedKey,
            ),
            NumberKey(
              value: '8',
              onPressedNumberKey: onPressedKey,
            ),
            NumberKey(
              value: '9',
              onPressedNumberKey: onPressedKey,
            ),
            OperationKey(
              value: 'x',
              isCircle: true,
              onPressedOperationKey: onPressedKey,
            )
          ]),
          FlexDisplay(keys: [
            NumberKey(
              value: '4',
              onPressedNumberKey: onPressedKey,
            ),
            NumberKey(
              value: '5',
              onPressedNumberKey: onPressedKey,
            ),
            NumberKey(
              value: '6',
              onPressedNumberKey: onPressedKey,
            ),
            OperationKey(
              value: '-',
              isCircle: true,
              onPressedOperationKey: onPressedKey,
            )
          ]),
          FlexDisplay(keys: [
            NumberKey(
              value: '1',
              onPressedNumberKey: onPressedKey,
            ),
            NumberKey(
              value: '2',
              onPressedNumberKey: onPressedKey,
            ),
            NumberKey(
              value: '3',
              onPressedNumberKey: onPressedKey,
            ),
            OperationKey(
              value: '+',
              isCircle: true,
              onPressedOperationKey: onPressedKey,
            ),
          ]),
          FlexDisplay(keys: [
            NumberKey(
              value: '0',
              flex: 2,
              onPressedNumberKey: onPressedKey,
            ),
            NumberKey(
              value: '.',
              onPressedNumberKey: onPressedKey,
            ),
            OperationKey(
              value: '=',
              isCircle: true,
              onPressedOperationKey: onPressedKey,
            ),
          ]),
        ]));
  }
}
