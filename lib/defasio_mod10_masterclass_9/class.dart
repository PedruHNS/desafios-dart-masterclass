// ignore_for_file: public_member_api_docs, sort_constructors_first

class CreditCard {
  final String numero;

  CreditCard({
    required this.numero,
  });

  List<String> _digitosSequenciais() {
    final separacao = numero.replaceAll(' ', '').split('');
    return separacao.sublist(0, 15);
  }

  int _digitoValidador() {
    final validador = numero.split('');
    return int.parse(validador.last);
  }

  void validacao() {
    int total = 0;
    int index = 0;
    int valor;
    final sequencia = _digitosSequenciais();

    for (var digito in sequencia) {
      if (index % 2 == 0) {
        valor = int.parse(digito) * 2;

        if (valor > 9) {
          final array = valor.toString().split('');

          valor = int.parse(array[0]) + int.parse(array[1]);
          total += valor;
        } else {
          total += valor;
        }
      } else {
        total += int.parse(digito);
      }

      index++;
    }
    print(total);
    //!final resultado = 10 - (total % 10);
    //!print(resultado);

    //! if (resultado == _digitoValidador()) {
    //!   print('$numero: valido');
    //! } else {
    //!   print('$numero: invalido');
    //! }
  }
}
