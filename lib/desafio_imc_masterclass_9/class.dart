class Person {
  const Person({required this.height, required this.weight});

  final double height;
  final double weight;

  void imc() {
    var imc = weight / (height * height);
    if (imc < 18.5) {
      print('MAGREZA (imc: ${imc.toStringAsFixed(1)})');
      return;
    }
    if (imc <= 24.9) {
      print('NORMAL (imc: ${imc.toStringAsFixed(1)})');
      return;
    }
    if (imc <= 29.9) {
      print('SOBREPESO (imc: ${imc.toStringAsFixed(1)})');
      return;
    }
    if (imc <= 39.9) {
      print('OBESIDADE (imc: ${imc.toStringAsFixed(1)})');
      return;
    }
    print('OBESIDADE (imc: ${imc.toStringAsFixed(1)})');
  }
}


