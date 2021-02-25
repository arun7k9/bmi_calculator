import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String interpretation() {
    if (_bmi >= 25) {
      return 'You have higher than normal weight, try to excercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have normal body weight, Good Job!';
    } else {
      return 'You have lower than normal weight, try to eat more!';
    }
  }
}
