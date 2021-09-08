import 'dart:math' as math;

void main(List<String> arguments) {
  var minInt = math.pow(-2, 63);
  var maxInt = math.pow(2, 63) - 1;
  print(minInt);
  print(maxInt);
}
