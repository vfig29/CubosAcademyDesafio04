class CounterModel {
  int counter = 0;

  int get counterValue {
    return counter;
  }

  void modifyCounterValue(Function(int) modifierFunc) {
    counter = modifierFunc(counter);
    //
  }
}
