import 'package:cubosdesafio4/counterModel.dart';

class CounterController {
  final CounterModel model = new CounterModel();

  String stringfyCounterAction() {
    return model.counterValue.toString();
  }

  void incrementAction() {
    model.modifyCounterValue((addedVariable) => addedVariable + 1);
  }

  void decrementAction() {
    model.modifyCounterValue((addedVariable) => addedVariable - 1);
  }
}
