import 'package:cubosdesafio4/counterController.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final CounterController controller = new CounterController();
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
            text: controller.stringfyCounterAction(),
            fontSize: 36,
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomFloatingButton(
            customFunc: () => operateState(controller.decrementAction),
            customIcon: Icon(Icons.exposure_minus_1),
          ),
          CustomFloatingButton(
            customFunc: () => operateState(controller.incrementAction),
            customIcon: Icon(Icons.plus_one),
          ),
        ],
      ),
    );
  }

  void operateState(VoidCallback operation) {
    setState(operation);
  }
}

class CustomFloatingButton extends StatelessWidget {
  final Icon customIcon;
  final Function customFunc;

  CustomFloatingButton({Key key, this.customIcon, this.customFunc})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: customFunc,
      child: customIcon,
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
