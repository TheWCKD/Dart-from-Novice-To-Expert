import 'package:equatable/equatable.dart';

void main(List<String> arguments) {
  var a1 = const A(1, 2);
  var a2 = const A(1, 2);

  print('a1 == a2: ${a1 == a2}');
  print('identical(a1,a2): ${identical(a1, a2)}');
}

class A extends Equatable {
  final int a;
  final int b;

  const A(this.a, this.b);

  @override
  List<Object?> get props => [a, b];
}
