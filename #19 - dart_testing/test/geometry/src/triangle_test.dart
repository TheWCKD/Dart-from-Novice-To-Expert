import 'dart:math';

import 'package:dart_testing/geometry/geometry.dart';
import 'package:test/test.dart';

void main() {
  late Triangle triangleFromPointsValid;
  late Triangle triangleFromPointsInvalid;

  late Triangle triangleFromLengthsValid;
  late Triangle triangleFromLengthsInvalid1;
  late Triangle triangleFromLengthsInvalid2;

  late Triangle triangleFromBaseHeightValid;
  late Triangle triangleFromBaseHeightInvalid;

  setUpAll(() {
    triangleFromPointsValid = Triangle.fromPoints(
      p1: const Point(0, 0),
      p2: const Point(1, 0),
      p3: const Point(0, 1),
    );
    triangleFromPointsInvalid = Triangle.fromPoints(
      p1: const Point(0, 0),
      p2: const Point(1, 1),
      p3: const Point(2, 2),
    );

    triangleFromLengthsValid = Triangle.fromLengths(a: 1, b: 1, c: 1);
    triangleFromLengthsInvalid1 = Triangle.fromLengths(a: 4, b: 2, c: 1);
    triangleFromLengthsInvalid2 = Triangle.fromLengths(a: -1, b: 2, c: 1);

    triangleFromBaseHeightValid = Triangle.fromBaseHeight(base: 2, height: 3);
    triangleFromBaseHeightInvalid =
        Triangle.fromBaseHeight(base: 2, height: -3);
  });

  group('Assign TriangleTypes correctly', () {
    group('Triangles are valid', () {
      test(
          'Triangle type of givenPoints constructor is TriangleType.pointsGiven',
          () {
        expect(triangleFromPointsValid.triangleType, TriangleType.pointsGiven);
      });
      test(
          'Triangle type of givenLengths constructor is TriangleType.lengthsGiven',
          () {
        expect(
            triangleFromLengthsValid.triangleType, TriangleType.lengthsGiven);
      });
      test(
          'Triangle type of givenBaseHeight constructor is TriangleType.baseHeightGiven',
          () {
        expect(triangleFromBaseHeightValid.triangleType,
            TriangleType.baseHeightGiven);
      });
    });
    group('Triangles are invalid', () {
      test(
          'Invalid Triangle type of givenPoints constructor is TriangleType.invalid',
          () {
        expect(triangleFromPointsInvalid.triangleType, TriangleType.invalid);
      });
      test(
          'Invalid Triangle type of givenLengths constructor is TriangleType.invalid',
          () {
        expect(triangleFromLengthsInvalid1.triangleType, TriangleType.invalid);
      });
      test(
          'Invalid Triangle type of givenLengths constructor is TriangleType.invalid',
          () {
        expect(triangleFromLengthsInvalid2.triangleType, TriangleType.invalid);
      });
      test(
          'Invalid Triangle type of givenBaseHeight constructor is TriangleType.invalid',
          () {
        expect(
            triangleFromBaseHeightInvalid.triangleType, TriangleType.invalid);
      });
    });
  });

  group('Calculate triangle area correctly based on TriangleTypes', () {
    group('Triangles are valid', () {
      test('Area of givenPoints triangle is 0.5', () {
        expect(triangleFromPointsValid.area, 0.5);
      });
      test('Area of givenLengths triangle  is 0.4330127018922193', () {
        expect(triangleFromLengthsValid.area, 0.4330127018922193);
      });
      test('Area of givenBaseHeight triangle  is 3', () {
        expect(triangleFromBaseHeightValid.area, 3);
      });
    });
    group('Triangles are invalid', () {
      test(
          'Area of invalid givenPoints triangle throws InvalidTriangleException',
          () {
        expect(() => triangleFromPointsInvalid.area,
            throwsA(isA<InvalidTriangleException>()));
      });
      test(
          'Area of invalid givenLengths triangle throws InvalidTriangleException',
          () {
        expect(() => triangleFromLengthsInvalid1.area,
            throwsA(isA<InvalidTriangleException>()));
      });
      test(
          'Area of invalid givenLengths triangle throws InvalidTriangleException',
          () {
        expect(() => triangleFromLengthsInvalid2.area,
            throwsA(isA<InvalidTriangleException>()));
      });
      test(
          'Area of invalid givenBaseHeight triangle throws InvalidTriangleException',
          () {
        expect(() => triangleFromBaseHeightInvalid.area,
            throwsA(isA<InvalidTriangleException>()));
      });
    });
  });

  group('Calculate triangle perimeter correctly based on TriangleTypes', () {
    group('Triangles are valid', () {
      test('Perimeter of givenPoints triangle is 3.414213562373095', () {
        expect(triangleFromPointsValid.perimeter, 3.414213562373095);
      });
      test('Perimeter of givenLengths triangle  is 3', () {
        expect(triangleFromLengthsValid.perimeter, 3);
      });
      test(
          'Perimeter of givenBaseHeight triangle  throws UnsolvablePerimeterException',
          () {
        expect(() => triangleFromBaseHeightValid.perimeter,
            throwsA(isA<UnsolvablePerimeterException>()));
      });
    });
    group('Triangles are invalid', () {
      test(
          'Perimeter of invalid givenPoints triangle throws InvalidTriangleException',
          () {
        expect(() => triangleFromPointsInvalid.area,
            throwsA(isA<InvalidTriangleException>()));
      });
      test(
          'Perimeter of invalid givenLengths triangle throws InvalidTriangleException',
          () {
        expect(() => triangleFromLengthsInvalid1.area,
            throwsA(isA<InvalidTriangleException>()));
      });
      test(
          'Perimeter of invalid givenLengths triangle throws InvalidTriangleException',
          () {
        expect(() => triangleFromLengthsInvalid2.area,
            throwsA(isA<InvalidTriangleException>()));
      });
      test(
          'Perimeter of invalid givenBaseHeight triangle throws InvalidTriangleException',
          () {
        expect(() => triangleFromBaseHeightInvalid.area,
            throwsA(isA<InvalidTriangleException>()));
      });
    });
  });
}
