class DoublePoint {
  // double x = 0;  // Giving an initial works fine here.
  // double y = 0;

  // double? x;  // Works but it feels wrong.
  // double? y;

  // late double x;  // late works fine and can be fine, but is it the BEST solution
  // late double y;
  double _x;
  double y;

  // DoublePoint(this.x, this.y); // Fun shorthand trick!

  // DoublePoint(this.x, this.y) {  // Works but odd in the double assignments.
  //   x *= 2;
  //   y *= 2;
  // }

  // DoublePoint(double x, double y) {
  //   this.x = x * 2;
  //   this.y = y * 2;
  // }

  // The correct Dart solution.
  DoublePoint(x, y)
      : _x = x * 2,
        y = y * 2;

  DoublePoint.empty()
      : _x = 0,
        y = 0 {
    print("You made an origin point");
  }

  @override
  String toString() {
    return "($_x, $y)";
  }

  double get x => _x;
}
