void main() {
  var age = '35 age';

  try {
    int.parse(age);
  } on FormatException catch (err, stacktrace) {
    print('FormatException');
  } on TypeError {
    print('TypeError');
  } catch (err) {
    print('General Error');
  } finally {
    print('finally (dispose, close...)');
  }
}
