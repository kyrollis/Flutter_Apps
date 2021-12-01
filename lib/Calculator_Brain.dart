import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int weight;
  final int height;

  double _bmi; // _  dash mean it is private

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2); // power to 2
    return _bmi
        .toStringAsFixed(1); //1 is number of digit decimal will show after ,
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Over Weight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Under Weight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have height than normal body weight , try ti exercise more';
    } else if (_bmi > 18.5) {
      return 'you have normal body, good job';
    } else {
      return 'you have lower than normal weight, you can eat a bit more';
    }
  }
}
