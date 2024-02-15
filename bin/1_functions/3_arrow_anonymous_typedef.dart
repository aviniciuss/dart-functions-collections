void main() {
  print(sumInts(1, 1));
  myNameIs('Anderson Vinicius');

  // anonymous function
  var f = () {
    print('LOL');
  };
  f();

  callbackFunction((name, message) { print(name + ' ' + (message ??= '')); });
}

// arrow function
int sumInts(int num1, int num2) => num1 + num2;

void myNameIs(final String name) => print(name);

// function param
void callbackFunction(MyNameIs myName) {
  myName('Anderson Vinicius:', 'callbackFunction');
}

typedef MyNameIs = void Function(String name, String? message);