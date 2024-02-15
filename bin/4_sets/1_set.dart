void main() {
  var numbersList = [];
  numbersList.add(1);
  numbersList.add(2);
  numbersList.add(3);
  numbersList.add(1);
  numbersList.add(4);
  print(numbersList);
  //print(numbers.toSet());

  var numbersSet = <int?>{};
  numbersSet.add(1);
  numbersSet.add(2);
  numbersSet.add(3);
  numbersSet.add(1);
  numbersSet.add(3);
  print(numbersSet);

  print(numbersSet.difference({1,2,4}));
  print(numbersSet.union({400}));
  print(numbersSet.intersection({1}));
  print(numbersSet.lookup(00)); // search
}