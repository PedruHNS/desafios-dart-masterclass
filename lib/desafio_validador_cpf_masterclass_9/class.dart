class CPF {
  final String cpf;

  CPF({required this.cpf});

  bool validador() {
    var valideCPF = cpf.substring(12, 14);
    var digitoCorreto = primeiroDigito() + segundoDigito();

    return valideCPF == digitoCorreto;
  }

  String primeiroDigito() {
    int multiplicador = 2;
    int somatorio = 0;
    var numeros =
        cpf.substring(0, 11).replaceAll('.', '').split('').reversed.toList();

    for (var numero in numeros) {
      somatorio += int.parse(numero) * multiplicador++;
    }

    int resultado = somatorio % 11;
    var digito1 = resultado >= 2 ? 11 - resultado : resultado = 0;
    return digito1.toString();
  }

  String segundoDigito() {
    int multiplicador = 2;
    int somatorio = 0;
    var numeros = cpf.substring(0, 11).replaceAll('.', '').split('');
    numeros.add(primeiroDigito());
    numeros.reversed.toList();

    for (var numero in numeros) {
      somatorio += int.parse(numero) * multiplicador++;
    }

    int resultado = somatorio % 11;
    var digito2 = resultado >= 2 ? 11 - resultado : resultado = 0;
    return digito2.toString();
  }
}
