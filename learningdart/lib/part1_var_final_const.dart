// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  print("Variable: var final const");

  var myVariable = 42; // Inferred type
  int myVariable2 = 42; // Explicit type
  print("Values  $myVariable $myVariable2");
  print("Types: ${myVariable.runtimeType} ${myVariable2.runtimeType}");

  // Dynamic type
  var myDyno; // Dynamic type
  // var myDyno = "Bob";  // Inferred type
  print("Values  $myDyno");
  print("Types: ${myDyno.runtimeType}");
  myDyno = "Dave";
  print("Values  $myDyno");
  print("Types: ${myDyno.runtimeType}");
  myDyno = 45.5;
  print("Values  $myDyno");
  print("Types: ${myDyno.runtimeType}");

  final myFinal = myVariable + 10;
  // myFinal = 4;  // This is bad no re-assignment
  print(myFinal);

  const myConst = true;
  // const myConst = myVariable + 10; // Illegal, const must be done at compile time
  // myConst = false;  // Fails!
  print(myConst);

  final int x = 7;
  const double y = 42.4;

  Text myText = const Text("Hello World");
  myText = const Text("another const object");
  myText = Text("Another one");
}
