import 'package:test/expect.dart';

import 'utils.dart';

void main() {
  final people = [
    'Rodrigo Rahman|35|M',
    'Jose|56|M',
    'Joaquim|84|M',
    'Rodrigo Rahman|35|M',
    'Maria|88|F',
    'Helena|24|F',
    'Leonardo|5|M',
    'Laura Maria|29|F',
    'Joaquim|72|M',
    'Helena|24|F',
    'Guilherme|15|M',
    'Manuela|85|F',
    'Leonardo|5|M',
    'Helena|24|F',
    'Laura|29|F',
  ];

  print('1 - REMOVE DUPLICATE:');
  var list = removeDuplicates(people);
  print(list);
  print(' ');

  print('2 - PEOPLE PER SEX:');
  peoplePerSex(list);
  print(' ');

  print('3 - OF LEGAL AGE:');
  ofLegalAge(list);
  print(' ');

  print('4 - OLDER PERSON:');
  olderPerson(list);
  print(' ');

  print(people);
}

void peoplePerSex(List<String> list) {
  var male = [];
  var female = [];

  var newList = convertToList(list);
  male.addAll(newList.where((element) => element[2] == 'M'));
  female = newList.where((element) => element[2] == 'F').toList();

  print('Total male ${male.length}:');
  print(male.map((e) => e[0]).join(','));

  print('Total female ${female.length}:');
  print(female.map((e) => e[0]).join(','));
}

void ofLegalAge(List<String> list) {
  var result = [];
  var newList = convertToList(list);

  result.addAll(newList.where((element) => (int.tryParse(element[1]) ?? 0) >= 18));
  print('Of legal Age:');
  print(result.map((e) => e[0]).join(','));
}

void olderPerson(List<String> list) {
  var newList = convertToList(list);

  newList.sort((a, b) {
      final age1 = int.tryParse(a[1]) ?? 0;
      final age2 = int.tryParse(b[1]) ?? 0;
      return age1.compareTo(age2);
  });

  var olderPerson = newList.last;
  print('Older Person (${olderPerson[1]}):');
  print(olderPerson[0]);
}
