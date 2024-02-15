void main() {
  var numbers = List.generate(10, (index) => index);
  //numbers.forEach(myPrint);

  var list = [
    [1, 2],
    [3, 4]
  ];

  var newList = list.expand((element) => element).toList();
  print(newList);

  var names = ['Anderson', 'Barbara', 'Ana'];
  var newNumbers = [1, 100, 10, 30, 40, 7, 2, 11, 56];
  // if exists return bool
  print(names.any((element) => element.toLowerCase() == 'gaby'));
  // check all list return bool
  print(names.every((element) => element.toLowerCase().contains('a')));
  // order (is mutable)
  names.sort();
  print(names);

  newNumbers.sort();
  print(newNumbers);
}

void myPrint(int value) => print(value);