void main(List<String> args) {
  calc(number1_1: 10, number1_2: 5, number2_2: 13500 , number2_1: 27000.0);
}

void calc({
  double? number1_1,
  double? number1_2,
  double? number2_1,
  double? number2_2,
}) {
  if (number1_1 == null) {
    print((number2_1! * number1_2!) / number2_2!);
  }

  if (number2_2 == null) {
    print((number2_1! * number1_2!) / number1_1!);
  }
  if (number1_2 == null) {
    print((number1_1! * number2_2!) / number2_1!);
  }
  if (number2_1 == null) {
    print((number1_1! * number2_2!) / number1_2!);
  }
}
