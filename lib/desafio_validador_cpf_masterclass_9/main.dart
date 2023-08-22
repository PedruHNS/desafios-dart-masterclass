import 'class.dart';

void main(List<String> arguments) {
  var pessoa = CPF(cpf: '111.222.333-80');

  print(pessoa.validador());
}
