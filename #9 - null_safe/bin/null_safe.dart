int a = 5;
int? nullable;

class A {
  static int b = 10;
}

class RandomClass {
  int x;
  int y = 7;
  int z;
  RandomClass({
    required this.z,
  }) : x = 5 {
    print('Constructor Body');
  }
}

void optionalParam([int beta = 25]) {
  int localVariable;
  localVariable = 5;
  print(10 + localVariable);
}

void doesNotReturnAnything() {}

String mustReturnString() {
  return 'Must return a String in null safety';
}

String multipleReturns() {
  if ('test' == 'test') {
    return 'true';
  } else if ('test' == 'notTest') {
    return 'false';
  } else if ('test' != 'whatever') {
    return 'whatever';
  } else {
    throw ArgumentError();
  }
}

void driveTwoSeatedCar(String driver, [String? passenger]) {
  //! String? == String or Null
  if (passenger != null) {
    print('$driver cruises with $passenger today!');
  } else {
    print('$driver will cruise alone today!');
  }
}

bool isEmptyList(Object object) {
  if (object is! List) {
    return false;
  } else {
    return object.isEmpty;
    //! return (object as List).isEmpty
  }
}

class Coffee {
  String? _temperature;

  void heat() {
    _temperature = 'hot';
  }

  void chill() {
    _temperature = 'iced';
  }

  void checkTemp() {
    if (_temperature != null) {
      print('Ready to serve ' + _temperature! + '!');
    }
  }

  String serve() => _temperature! + ' coffee';
}

int tracingFibonacci(int n) {
  //! this doesn't need to be initialized here
  final int result;
  if (n < 2) {
    //! it can be initialized later on, but only once(final)
    result = n;
  } else {
    result = tracingFibonacci(n - 2) + tracingFibonacci(n - 1);
  }
  print(result);
  return result;
}

//! List<String>? => List<String> arguments
String makeCommand(String executable, [List<String>? arguments]) {
  var result = executable;
  if (arguments != null) {
    //! we know for sure arguments is of type List<String>
    result += ' ' + arguments.join(' ');
  }
  return result;
}

class HttpResponse {
  final int code;
  final String? error;

  HttpResponse.ok()
      : code = 200,
        error = null;
  HttpResponse.notFound()
      : code = 404,
        error = 'Not found';

  @override
  String toString() {
    //! if code == 200, then error is null
    if (code == 200) return 'OK';

    //! otherwise error is not null and can call the toUpperCase method
    return 'ERROR $code ${error!.toUpperCase()}';
    // return 'ERROR $code ${(error as String).toUpperCase()}';
  }
}

class Car {
  late int _speed;

  void accelerate() {
    _speed = 50;
  }

  void brake() {
    _speed = 0;
  }

  //! here it makes sure it was assigned a value
  int steer() => _speed -= 15;
}

int readThermometer() => 25;

class Weather {
  late final int temperature = readThermometer();
}

void positionalMandatory(int a, int b) {}
void positionalOptional([int? a, int? b]) {}
void namedMandatory({required int a, required int b}) {}
void namedOptional({int a = 4, int b = 10}) {}

void main(List<String> arguments) {
  //! mandatory, order matters
  positionalMandatory(2, 3);
  //! optional, order matters
  positionalOptional(null, 3);
  //! mandatory, order doesn't matter
  namedMandatory(b: 3, a: 2);
  //! optional, order doesn't matter
  namedOptional(b: 3, a: 2);

  // var w = Weather();
  // print(w.temperature + 25);
  // var car = Car();
  // car.accelerate();
  // car.steer();
  // print(isEmptyList([]));
  // print(a);
  // print(A.b);
  // print(nullable);
  // driveTwoSeatedCar('WCKD');
  // print(mustReturnString());
  // print(multipleReturns());
}
