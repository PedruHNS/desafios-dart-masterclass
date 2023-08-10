void main(List<String> args) {
  final number = 10;
  final fibonacci = <int>[];
  
  for (var i = 0; i < number; i++) {
    var value = sequence(i);
    fibonacci.add(value);
  }
  print(fibonacci);
}

int sequence(int number) {
  if (number <= 1) {
    return number;
  }
  return sequence(number - 1) + sequence(number - 2);
}
