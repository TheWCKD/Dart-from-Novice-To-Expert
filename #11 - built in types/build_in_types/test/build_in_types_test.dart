import 'package:build_in_types/types.dart';
import 'package:test/test.dart';

void main() {
  test('show correct min value of integer type', () {
    expect(showMinIntValue(), -9223372036854775808);
  });
  test('show correct max value of integer type', () {
    expect(showMaxIntValue(), 9223372036854775807);
  });
}
