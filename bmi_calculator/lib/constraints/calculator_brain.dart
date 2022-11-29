// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

class CalculatorBrain {
  final int weight;
  final int height;
  CalculatorBrain({
    required this.weight,
    required this.height,
  });

  double _bmi = 0;
  String calculatebmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi >= 18.5) {
      return "Normal";
    }

    return "Underweight";
  }

  String getinterpretation(){
    if (_bmi >= 25) {
      return "You have higher than the normal body weight .Try to exercise more";
    } else if (_bmi >= 18.5) {
      return "you have normal body weight good job";
    }
    return "You have a body weight lower than the normal .You can eat a bit more";
  }
}
