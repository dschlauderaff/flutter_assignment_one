import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function quoteHandler;

  const TextControl(this.quoteHandler);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        child: Text(
          'Next Quote',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          textAlign: TextAlign.center,
        ),
        onPressed: quoteHandler,
      ),
    );
  }
}
