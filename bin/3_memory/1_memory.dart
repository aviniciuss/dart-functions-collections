void main() {
  var names = ['Anderson'];

  print(names);
  //print(addImmutable(names));
  add(names);
  print(names);
  print(names.hashCode);
}

void add(List<String> names) {
  print(names.hashCode);
  names.add('Vinicius');
}

List<String> addImmutable(List<String> names) {
  var newNames = [...names];
  print(newNames.hashCode);
  newNames.add('Vinicius');
  return newNames.toList();
}