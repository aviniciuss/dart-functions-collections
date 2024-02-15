void main() {
  // map is key:value

  final names = <String, String>{};
  names.putIfAbsent('name:1', () => 'Anderson');
  names.putIfAbsent('age:1', () => '34');

  names.update('name:1', (value) => 'Vinicius');

  print(names);

  print(names.map((key, value) => MapEntry(key.toUpperCase(), value.toUpperCase())));

  final langs = <String, Object> {
    'name': 'Flutter',
    'courses': [
      { 'name' : 'Flutter Academy', 'id' : 1 },
      { 'name' : 'Flutter X', 'id' : 2 },
    ],
  };

  print(langs);
}