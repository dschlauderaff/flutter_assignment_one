import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_assignment/quote.dart';
import 'package:flutter_assignment/text_control.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var listPosition = 0;
  var quote;
  static const _quotes = [
    "Crichton: That’s your plan? Wile E. Coyote would come up with a better plan than that!",
    'Rygel: I like my wives pregnant and my ships cold to the touch. That way my feet stay warm and my slumber is uninterrupted.',
    'Rygel: My progeny were tiny. Tiny and handsome, like their father.',
    "D'Argo: She was vague to the point that I suspect she doesn't have a clue.",
    "Crichton: I'm not deficient. I'm superior! Humans. Are. Superior.",
  ];

  _randomGenerator() {
    Random rnd = new Random();
    int min = 0;
    int max = _quotes.length;
    int next = rnd.nextInt(max);
    return next;
  }

  void _quoteHandler() {
    int next = _randomGenerator();
    if (listPosition == next) {
      _quoteHandler();
    } else {
      setState(() => listPosition = next);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Farscape Quotes!'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Quote(_quotes[listPosition]),
              TextControl(_quoteHandler),
            ],
          ),
        ),
      ),
    );
  }
}
