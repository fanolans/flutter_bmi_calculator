class BMICalculatorServices {
  BMICalculatorServices({
    required this.height,
    required this.weight,
  });

  final int height;
  final int weight;

  double? _bmi;

  String calculateBMI() {
    _bmi = weight / ((height / 100) * (height / 100));
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! < 18.5) {
      return 'Kurus';
    } else if (_bmi! >= 18.5 && _bmi! < 25) {
      return 'Normal';
    } else if (_bmi! >= 25 && _bmi! <= 30) {
      return 'Kegemukan';
    } else {
      return 'Obesitas';
    }
  }

  String getRecommendation() {
    if (_bmi! < 18.5) {
      return 'Anda memiliki berat badan yang lebih rendah dari normal. Anda dapat makan sedikit lebih banyak.';
    } else if (_bmi! >= 18.5 && _bmi! < 25) {
      return 'Anda memiliki berat badan normal. Good job!';
    } else if (_bmi! >= 25 && _bmi! <= 30) {
      return 'Anda memiliki berat badan yang lebih dari normal. Cobalah untuk lebih banyak berolahraga.';
    } else {
      return 'Anda memiliki berat badan obesitas. Cobalah untuk lebih banyak berolahraga.';
    }
  }
}
