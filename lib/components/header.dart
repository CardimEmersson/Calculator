import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String operation;

  Header({this.operation});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.1;
    return Container(
      height: height,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(operation, textAlign: TextAlign.end, style: TextStyle(decoration: TextDecoration.none, color: Colors.grey, fontSize: 30, fontWeight: FontWeight.normal)),
          ),
        ],
      ),
    );
  }
}
