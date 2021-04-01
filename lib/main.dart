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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Contador'),
      ),
      body: Container(
        color: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("Pressionado"),
        child: Icon(Icons.add),
      ),
    );
  }
}
