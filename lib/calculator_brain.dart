import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow((height / 100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30) {
      return 'Acima do peso';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Abaixo do peso ideal';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30) {
      return 'Você está acima do peso ideal. Tente fazer mais exercícios e melhorar a sua alimentação.';
    } else if (_bmi > 18.5) {
      return 'Você está com o peso ideal, continue assim !';
    } else {
      return 'Você está abaixo do peso ideal. Melhore a sua alimentação.';
    }
  }
}
