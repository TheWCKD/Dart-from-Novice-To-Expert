void main(List<String> arguments) {
  // print('Var:\n');

  final a;
  a = 5;
  // var vi = 5;
  // var vs = 'String';
  // var vListInt = [1, 2, 3];

  // // vi = 5.0;

  // print(vi.runtimeType);
  // print(vs.runtimeType);
  // print(vListInt.runtimeType);

  // print('\nDynamic:\n');
  // dynamic di = 5;
  // dynamic ds = 'String';
  // dynamic dListInt = [1, 2, 3];

  // di = 3.0;

  // print(di.runtimeType);
  // print(ds.runtimeType);
  // print(dListInt.runtimeType);

  // print('\n-----------------\n');

  // var vv; //! var vv == dynamic vv
  // dynamic? dd; //* dynamic == dynamic?

  // print(vv.runtimeType);
  // print(dd.runtimeType);

  // final alfa = A(a: 2);
  // alfa.a = 5;
  // print(alfa.a);
  // int sum() => 2 + 3;
  // var alfa = const A(list: [1, 2, 3]);
  // var beta = const A(list: [1, 2, 3]);
  // // alfa.list.add(4);
  // print(alfa.hashCode);
  // print(beta.hashCode);
  // alfa.list.forEach(print);

  // final test = const [1, 2, 3];
  // test.add(2);
  // print(test);

  final list = const [1, 2, 3];
  const list2 = [1, 2, 3];
  print(list.hashCode);
  print(list2.hashCode);
}
