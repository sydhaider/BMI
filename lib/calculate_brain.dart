import 'dart:math';

class CalculateBrain {
  CalculateBrain({this.height, this.weight});
  int height;
  int weight;
  double _bmi;
  String calclateBMI() {
     _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getresulate() {
    if ( _bmi >= 25.0) {
      return 'OverWeight';
    } else if (_bmi >= 18.9 && _bmi < 25.0) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
    String getExplanation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. you should go to the gym';
    } else if ( _bmi >= 18.9 && _bmi < 25.0) {
      return 'Good job';
    } else {
      return 'You have a lower than normal body weight.Eat more healthy food';
    }
  }
}
