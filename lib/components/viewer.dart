import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Viewer extends StatelessWidget {
  final String value;

  Viewer({this.value});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.2;
    return Container(
      decoration: BoxDecoration(color: Colors.white, border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AutoSizeText(
              value,
              minFontSize: 20,
              maxFontSize: 80,
              maxLines: 1,
              textAlign: TextAlign.end,
              style: TextStyle(fontWeight: FontWeight.w100, decoration: TextDecoration.none, fontSize: 80, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
