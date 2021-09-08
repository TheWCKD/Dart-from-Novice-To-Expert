import 'dart:math';

void main(List<String> arguments) {
  print('getUniqueInteger called');
  getUniqueInteger();
  print('getUniqueInteger() --> ${getUniqueInteger()}');
  print('getUniqueInteger finished\n');

  print('getThreeRandomIntegers called');
  getThreeRandomIntegers().toList();
  print('getThreeRandomIntegers() --> ${getThreeRandomIntegers().toList()}');
  print('getThreeRandomIntegers finished');

  print('getFutureUniqueInteger called');
  getFutureUniqueInteger().then(print);
  print('getUniqueInteger finished');

  getStreamOfThreeRandomIntegers().forEach(print);
}

int getUniqueInteger() {
  return Random().nextInt(10) + 1;
}

Iterable<int> getThreeRandomIntegers() sync* {
  for (var i = 0; i < 3; i++) {
    yield Random().nextInt(10) + 1;
  }
}

Future<int> getFutureUniqueInteger() {
  return Future.delayed(
      const Duration(seconds: 3), () => Random().nextInt(10) + 1);
}

Stream<int> getStreamOfThreeRandomIntegers() async* {
  for (var i = 0; i < 3; i++) {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield i;
  }
}
