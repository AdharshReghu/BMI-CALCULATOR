import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  late final int height;
  late final int weight;
  late double _bmi;

  String Bmiresult() {
    _bmi = (weight / pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi > 25) {
      return 'OverWeight';
    } else if (_bmi > 18) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String GetSuggestions() {
    if (_bmi > 25) {
      return 'You have a higher than normal body weight,Try to exercise more';
    } else if (_bmi > 18) {
      return 'You have a normal body weight, good job';
    } else {
      return 'You have a lower than a normal body weight,You can eat a bit more';
    }
  }
}
