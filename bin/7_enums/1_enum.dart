void main() {
  print(Colors.green.name);
  print(Colors.values.byName('red').name); // exception
  print(Colors.values.asMap());
  print(Colors.values.asNameMap());
}

enum Colors {
  red, green, yellow
}