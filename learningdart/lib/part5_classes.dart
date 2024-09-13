// ignore_for_file: avoid_print

import 'package:learningdart/double_point.dart';

void main() {
  print("Classes with DoublePoint");
  final pt1 = DoublePoint(1.1, 2.2);
  // pt1._x = 77;  // Simply not gonna work!
  print("pt1 ${pt1.x} ${pt1.y}");
  print("pt1 $pt1");

  final pt2 = DoublePoint.empty();
  print("pt2 = $pt2");
}
