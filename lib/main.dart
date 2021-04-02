import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: CounterScreen(),
    ),
  );
}

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  var resultado = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Contador'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CounterDisplay(
            text: 'Resultado',
            fontSize: 26,
          ),
          CounterDisplay(
            text: '$resultado',
            fontSize: 36,
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                resultado--;
                print('funciona subtraendo!');
              });
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                resultado++;
                print('funciona somador!');
              });
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

class CounterDisplay extends StatelessWidget {
  final String text;
  final double fontSize;

  CounterDisplay({Key key, this.text = '', this.fontSize = 1.0})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
        ),
      ),
    );
  }
}
