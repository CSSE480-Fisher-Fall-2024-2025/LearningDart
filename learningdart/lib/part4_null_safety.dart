// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  print("Null safety!");

  double? nullableDouble;
  double nonNullDouble = 7.5;

  print("Values: $nullableDouble $nonNullDouble");

  late double oldSchoolVariable;
  // if (7 < 2) {
  oldSchoolVariable = 5.5;
  // }
  print("Value of a late double: $oldSchoolVariable");

  // ? - optional chaining
  // ! - force unwrap

  ElevatedButton? b1 =
      const ElevatedButton(onPressed: null, child: Text("Hello"));

  var testCase = 2;
  if (testCase == 0) {
    b1 = null;
  } else if (testCase == 1) {
    b1 = const ElevatedButton(onPressed: null, child: null);
  } else if (testCase == 2) {
    b1 = const ElevatedButton(onPressed: null, child: Text("Hello"));
  }

  print("All ? mark safe = ${(b1?.child as Text?)?.data}");
  print("Test case 1 = ${(b1!.child as Text?)?.data}");
  print("Test case 2 = ${(b1.child as Text).data}");
}
