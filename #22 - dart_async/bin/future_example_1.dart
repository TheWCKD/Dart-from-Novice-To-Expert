import 'dart:async';

void main() {
  print('1');
  scheduleMicrotask(() => print('2'));

  Future.delayed(const Duration(seconds: 1), () => print('3'));
  Future(() => print('4'));
  Future(() => print('5'));

  scheduleMicrotask(() => print('6'));

  print('7');
}
