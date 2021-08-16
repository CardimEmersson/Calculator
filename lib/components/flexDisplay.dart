import 'package:flutter/material.dart';

class FlexDisplay extends StatelessWidget {
  final List<Widget> keys;

  FlexDisplay({this.keys});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: keys,
      ),
    );
  }
}
