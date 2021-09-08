import 'dart:math';

import 'package:dart_testing/geometry/geometry.dart';

enum TriangleType { lengthsGiven, pointsGiven, baseHeightGiven, invalid }

class Triangle {
  Triangle.fromLengths({required this.a, required this.b, required this.c})
      : triangleType = _validTriangleLengthsGiven(a!, b!, c!)
            ? TriangleType.lengthsGiven
            : TriangleType.invalid;
  Triangle.fromPoints({required this.p1, required this.p2, required this.p3})
      : triangleType = _validTrianglePointsGiven(p1!, p2!, p3!)
            ? TriangleType.pointsGiven
            : TriangleType.invalid,
        a = _distanceBetweenTwoPoints(p1, p2),
        b = _distanceBetweenTwoPoints(p2, p3),
        c = _distanceBetweenTwoPoints(p1, p3);
  Triangle.fromBaseHeight({required this.base, required this.height})
      : triangleType = _validTriangleBaseHeightGiven(base, height)
            ? TriangleType.baseHeightGiven
            : TriangleType.invalid;

  final TriangleType triangleType;

  Point? p1;
  Point? p2;
  Point? p3;

  num? a;
  num? b;
  num? c;

  num? base;
  num? height;

  static double _distanceBetweenTwoPoints(Point a, Point b) =>
      sqrt(pow(b.x - a.x, 2) + pow(b.y - a.y, 2));

  static bool _validTriangleLengthsGiven(num a, num b, num c) =>
      a >= 0 &&
      b >= 0 &&
      c >= 0 &&
      (a + b) >= c &&
      (a + c) >= b &&
      (b + c) >= a;

  static bool _validTrianglePointsGiven(Point p1, Point p2, Point p3) =>
      (p1.x * (p2.y - p3.y) + p2.x * (p3.y - p1.y) + p3.x * (p1.y - p2.y))
          .abs() !=
      0;

  static bool _validTriangleBaseHeightGiven(num? base, num? height) =>
      base! >= 0 && height! >= 0;

  num get area {
    switch (triangleType) {
      case TriangleType.lengthsGiven:
        final s = 1 / 2 * (a! + b! + c!);
        return sqrt(s * (s - a!) * (s - b!) * (s - c!));
      case TriangleType.pointsGiven:
        final sum = (p1!.x * (p2!.y - p3!.y) +
                p2!.x * (p3!.y - p1!.y) +
                p3!.x * (p1!.y - p2!.y))
            .abs();
        return (1 / 2) * sum;
      case TriangleType.baseHeightGiven:
        return (1 / 2) * base! * height!;
      case TriangleType.invalid:
        throw InvalidTriangleException();
    }
  }

  num get perimeter {
    switch (triangleType) {
      case TriangleType.lengthsGiven:
        return a! + b! + c!;
      case TriangleType.pointsGiven:
        return a! + b! + c!;
      case TriangleType.baseHeightGiven:
        throw UnsolvablePerimeterException();
      case TriangleType.invalid:
        throw InvalidTriangleException();
    }
  }
}
