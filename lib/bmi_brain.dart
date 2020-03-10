import 'dart:math';

class BMIBrain {
  final int height;
  final int weight;
  double _bmi;

  BMIBrain(this.height, this.weight);

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getComments() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight. Get thinner you fat bitch';
    } else if (_bmi >= 18) {
      return 'You have normal body weight. Niceee!';
    } else {
      return 'You have lower than normal body weight. Sad lad.';
    }
  }
}
