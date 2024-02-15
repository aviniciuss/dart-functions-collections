void main() {
  print(sumDoubles(num1: 10.5, num2: 0.5));
  print(sumDefaultDoubles(num1: 10.5));
  print(sumOptionalDoubles(1,1));
}

int sumInst(int num1, int num2) {
  return num1 + num2;
}

// named params
double sumDoubles({required double num1, double? num2}) {
  return num1 + (num2 ??= 0);
}

// default param value
double sumDefaultDoubles({required double num1, double num2 = 0}) {
  return num1 + num2;
}

// optional param
double sumOptionalDoubles([double num1 = 0, double num2 = 0]) {
  return num1 + num2;
}