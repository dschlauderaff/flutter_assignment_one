import 'package:flutter/material.dart';

class Quote extends StatelessWidget {
  final String text;

  Quote(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        textAlign: TextAlign.center,
      ),
    );
  }
}
